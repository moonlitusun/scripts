#!/bin/bash

path="$PWD"
target_path=${path}
path_name=$(echo "$1" | sed 's/ /-/g')
title=$(python3 -c "import sys; print(' '.join(word.capitalize() for word in sys.argv[1].split()))" "$1")

if [ "$2" = "-c" ]; then
  mkdir "./$path_name"
  cd "./$path_name" || exit 1
  mkdir "./.code"
  target_path="$target_path/$path_name/$path_name.md"
else
  target_path="$target_path/$path_name.md"
fi

if [ -e "$target_path" ]; then
  echo "Error: Target path is exist." >&2
  exit 1
fi

echo "---
title: $title
date: $(date "+%Y-%m-%d %H:%M:%S")
---" >"$target_path"

sleep 1

# # use vscode
# if command -v code >/dev/null 2>&1; then
#   code "$target_path"
# fi

# use cursor
# if command -v cursor >/dev/null 2>&1; then
#   cursor "$target_path"
# fi
