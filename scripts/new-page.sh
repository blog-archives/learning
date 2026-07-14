#!/usr/bin/env bash
set -euo pipefail

title="${1:-}"
if [[ -z "$title" ]]; then
  echo "Usage: make page <title>" >&2
  exit 1
fi

date_path="$(date +%Y/%m/%d)"
page_dir="content/${date_path}"
page_file="${page_dir}/${title}.md"

if [[ -f "$page_file" ]]; then
  echo "Already exists: ${page_file}" >&2
  exit 1
fi

mkdir -p "$page_dir"
cat > "$page_file" <<EOF
+++
date = '$(date +%Y-%m-%dT%H:%M:%S%z)'
title = '${title}'
+++

EOF

echo "Created ${page_file}"
