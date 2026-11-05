#!/usr/bin/env bash
set -euo pipefail

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
template="$root_dir/resume.typ"
project_file="$root_dir/projects.typ"
output_dir="$root_dir"

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT

cp "$project_file" "$tmp_dir/$(basename "$project_file")"
cp "$template" "$tmp_dir/resume.typ"
cp -R "$root_dir/template" "$tmp_dir/template"

# Normal version (education at top)
typst compile "$tmp_dir/resume.typ" "$output_dir/Jinay Patel.pdf"

# Waterlooworks version (education at bottom)
mkdir -p "$output_dir/Waterlooworks"
sed '/^== Education$/,/^== Skills$/{ /^== Skills$/!d }' "$tmp_dir/resume.typ" | sed '${s/$/\n\n== Education\n\n#edu(\n  institution: "University of Waterloo",\n  degree: "Bachelor of Computer Engineering",\n)/}' > "$tmp_dir/resume-ww.typ"
typst compile "$tmp_dir/resume-ww.typ" "$output_dir/Waterlooworks/Jinay Patel.pdf"
