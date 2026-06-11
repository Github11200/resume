#!/usr/bin/env bash
set -euo pipefail

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
template="$root_dir/resume.typ"

declare -a project_files=(
  "$root_dir/projects/low-level-projects.typ"
  "$root_dir/projects/fullstack-projects.typ"
  "$root_dir/projects/ai-projects.typ"
)

declare -a output_files=(
  "$root_dir/Low-Level-Resume.pdf"
  "$root_dir/Full-Stack-Resume.pdf"
  "$root_dir/Machine-Learning-Resume.pdf"
)

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT

mkdir -p "$tmp_dir/projects"

for i in "${!project_files[@]}"; do
  project_file="${project_files[$i]}"
  output_file="${output_files[$i]}"
  temp_typst="$tmp_dir/resume-${i}.typ"
  temp_project="$tmp_dir/projects/$(basename "$project_file")"

  cp "$project_file" "$temp_project"
  sed "s|#include \"projects/low-level-projects.typ\"|#include \"projects/$(basename "$project_file")\"|" "$template" > "$temp_typst"
  typst compile "$temp_typst" "$output_file"
done
