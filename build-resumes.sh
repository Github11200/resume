#!/usr/bin/env bash
set -euo pipefail

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
template="$root_dir/resume.typ"
project_file="$root_dir/projects.typ"
output_dir="$root_dir/output"
cv_dir="${CAREER_OPS_DIR:-$root_dir/../career-ops}"
cv_file="$cv_dir/cv.md"

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT

cp "$project_file" "$tmp_dir/$(basename "$project_file")"
cp "$template" "$tmp_dir/resume.typ"
cp -R "$root_dir/template" "$tmp_dir/template"

# Normal version (education at top)
mkdir -p "$output_dir"
typst compile "$tmp_dir/resume.typ" "$output_dir/Jinay_Patel_Resume.pdf"

# Waterlooworks version (education at bottom)
sed '/^== Education$/,/^== Experience$/{ /^== Experience$/!d }' "$tmp_dir/resume.typ" | sed '${s/$/\n\n== Education\n\n#edu(\n  institution: "University of Waterloo",\n  degree: "Bachelor of Computer Engineering",\n)/}' > "$tmp_dir/resume-ww.typ"
typst compile "$tmp_dir/resume-ww.typ" "$output_dir/Jinay_Patel_Resume_Waterlooworks.pdf"

# Career Ops CV sync: resume.typ + projects.typ are the source of truth, so
# refresh career-ops/cv.md from them after a successful build. Skipped when the
# Career Ops checkout is not present (for example in CI); a parse failure is an
# error and leaves the previous cv.md untouched.
if [ ! -d "$cv_dir" ]; then
  echo "cv.md sync skipped: no Career Ops checkout at $cv_dir"
  exit 0
fi

python3 - "$root_dir" "$cv_file" <<'PY'
import os
import re
import sys
import tempfile
from pathlib import Path

root = Path(sys.argv[1])
cv_path = Path(sys.argv[2])
resume = (root / "resume.typ").read_text(encoding="utf-8")
projects = (root / "projects.typ").read_text(encoding="utf-8")


def fail(message):
    sys.stderr.write("cv.md sync failed: %s\n" % message)
    sys.exit(1)


def field(block, name):
    match = re.search(r'(?m)^\s*%s:\s*"([^"]*)"' % name, block)
    return match.group(1) if match else ""


def emphasis(text):
    text = text.strip()
    text = re.sub(r'#link\("([^"]*)"\)\[([^\]]*)\]', r'[\2](\1)', text)
    text = re.sub(r'(?<!\*)\*([^*]+)\*(?!\*)', r'**\1**', text)
    return text.rstrip("\\").strip()


def dates_of(block):
    inline = field(block, "dates")
    if inline:
        return inline
    helper = re.search(r'dates-helper\(([^)]*)\)', block, re.S)
    if not helper:
        return ""
    start = re.search(r'start-date:\s*"([^"]*)"', helper.group(1))
    end = re.search(r'end-date:\s*"([^"]*)"', helper.group(1))
    if start and end:
        return "%s - %s" % (start.group(1), end.group(1))
    return start.group(1) if start else ""


def bullets(block):
    out = []
    for line in block.splitlines():
        stripped = line.strip()
        if stripped.startswith("- "):
            item = emphasis(stripped[2:])
            if not item:
                fail("empty bullet in %r" % block.splitlines()[0])
            out.append(item)
    return out


def blocks(text, marker):
    parts = re.split(r'(?m)^#%s\(' % marker, text)[1:]
    result = []
    for part in parts:
        body = part.split("\n)", 1)
        if len(body) != 2:
            fail("unterminated #%s( block" % marker)
        head, rest = body[0], body[1]
        rest = rest.split("#include", 1)[0]
        rest = re.split(r'(?m)^== ', rest)[0]
        result.append((head, bullets(rest)))
    return result


name = field(resume, "name") or "Jinay Patel"
if name == "Jinay Patel" and 'let name = "Jinay Patel"' not in resume:
    fail("could not read the candidate name from resume.typ")

edu_blocks = blocks(resume, "edu")
if len(edu_blocks) != 1:
    fail("expected exactly one #edu block, found %d" % len(edu_blocks))
edu_head, _ = edu_blocks[0]
institution = field(edu_head, "institution")
degree = field(edu_head, "degree")
if not institution or not degree:
    fail("#edu block is missing institution or degree")
edu_dates = field(edu_head, "dates")
degree_line = degree + (", " + edu_dates[0].lower() + edu_dates[1:] if edu_dates else "")

skills = []
for line in resume.splitlines():
    match = re.match(r'^\*(Languages|Technologies)\*:\s*(.+)$', line.strip())
    if match:
        skills.append((match.group(1), emphasis(match.group(2))))
if not skills:
    fail("no Skills lines found in resume.typ")

work = blocks(resume, "work")
if not work:
    fail("no #work blocks found in resume.typ")
project_list = blocks(projects, "project")
if not project_list:
    fail("no #project blocks found in projects.typ")


def awards_section(text):
    section = re.search(r'(?m)^== Awards\s*$(.*?)(?=^== |^#include|\Z)', text, re.S)
    if not section:
        return []
    entries = []
    for part in re.split(r'(?m)^#certificates\(', section.group(1))[1:]:
        head, marker, rest = part.partition("\n)")
        if not marker:
            fail("unterminated #certificates( block")
        award_name = field(head, "name")
        if not award_name:
            fail("#certificates block is missing a name")
        description = " ".join(l.strip() for l in rest.splitlines() if l.strip())
        description = emphasis(description.lstrip("\\").strip()) if description else ""
        entries.append((award_name, field(head, "issuer"), field(head, "date"), description))
    if not entries:
        fail("Awards section has no #certificates entries")
    return entries


awards = awards_section(resume)

out = ["# CV - %s" % name, "", "## Education", "", "**%s**" % institution, "- %s" % degree_line, ""]
out += ["## Skills", ""]
for label, value in skills:
    out += ["**%s**: %s" % (label, value), ""]

out += ["## Experience", ""]
for head, items in work:
    title, company = field(head, "title"), field(head, "company")
    location, dates = field(head, "location"), dates_of(head)
    if not title or not company:
        fail("#work block is missing title or company")
    if not items:
        fail("#work block %r has no bullets" % title)
    heading = " | ".join([p for p in (title, company, location, dates) if p])
    out += ["### %s" % heading, ""] + ["- %s" % b for b in items] + [""]

out += ["## Projects", ""]
for head, items in project_list:
    proj_name, proj_type = field(head, "name"), field(head, "type")
    if not proj_name:
        fail("#project block is missing a name")
    if not items:
        fail("#project block %r has no bullets" % proj_name)
    heading = " | ".join([p for p in (proj_name, proj_type) if p])
    out += ["### %s" % heading, ""] + ["- %s" % b for b in items] + [""]

if awards:
    out += ["## Awards", ""]
    for award_name, issuer, date, description in awards:
        heading = " | ".join([p for p in (award_name, issuer, date) if p])
        out += ["### %s" % heading, ""]
        if description:
            out += [description, ""]

markdown = "\n".join(out).rstrip("\n") + "\n"

for section in ("## Education", "## Skills", "## Experience", "## Projects"):
    if section not in markdown:
        fail("generated markdown is missing %r" % section)
if awards and "## Awards" not in markdown:
    fail("generated markdown is missing the Awards section")
expected_entries = len(work) + len(project_list) + len(awards)
found_entries = len(re.findall(r'(?m)^### ', markdown))
if found_entries != expected_entries:
    fail("generated %d entries, expected %d" % (found_entries, expected_entries))
if len(markdown) < 500:
    fail("generated markdown is suspiciously short")

cv_path.parent.mkdir(parents=True, exist_ok=True)
handle, temp_name = tempfile.mkstemp(dir=str(cv_path.parent), prefix=".cv.md.", suffix=".tmp")
try:
    with os.fdopen(handle, "w", encoding="utf-8") as stream:
        stream.write(markdown)
    os.replace(temp_name, cv_path)
except BaseException:
    if os.path.exists(temp_name):
        os.unlink(temp_name)
    raise

print("cv.md synced: %s (%d roles, %d projects)" % (cv_path, len(work), len(project_list)))
PY
