#!/usr/bin/env bash
set -euo pipefail

title="${1:-}"
if [[ -z "$title" ]]; then
  echo "Usage: make page <title>" >&2
  exit 1
fi

date_path="$(date +%Y/%m/%d)"
page_file="content/${date_path}/${title}.md"

if [[ -f "$page_file" ]]; then
  echo "Already exists: ${page_file}" >&2
  exit 1
fi

hugo new content "$page_file"
echo "Created ${page_file}"
