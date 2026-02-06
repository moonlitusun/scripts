#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Antigravity Search
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 🚀
# @raycast.argument1 { "type": "text", "placeholder": "Folder name" }
# @raycast.packageName Antigravity Search
# @raycast.needsConfirmation false

# Documentation:
# @raycast.author roc_sun
# @raycast.authorURL https://raycast.com/roc_sun
# @raycast.description Search folders in /Users/rocsun/Code and open with Antigravity

SEARCH_DIR="/Users/rocsun/Code"
SEARCH_TERM="$1"

if [ -z "$SEARCH_TERM" ]; then
    echo "Error: Please provide a folder name to search"
    exit 1
fi

echo "Searching for folders matching: $SEARCH_TERM"
echo "---"

FOLDERS=$(find "$SEARCH_DIR" -mindepth 1 -maxdepth 3 -type d \
    ! -path "*/node_modules/*" \
    ! -name "node_modules" \
    -iname "*$SEARCH_TERM*" 2>/dev/null | sort)

if [ -z "$FOLDERS" ]; then
    echo "No matching folders found for: $SEARCH_TERM"
    exit 1
fi

FOLDER_COUNT=$(echo "$FOLDERS" | wc -l | tr -d ' ')

if [ "$FOLDER_COUNT" -eq 1 ]; then
    FOLDER="$FOLDERS"
    echo "Found 1 match, opening: $FOLDER"
    echo "---"
    agy "$FOLDER"
    echo "✓ Opened with Antigravity"
else
    echo "Found $FOLDER_COUNT matches:"
    echo ""
    
    COUNTER=1
    while IFS= read -r FOLDER; do
        echo "$COUNTER. $FOLDER"
        COUNTER=$((COUNTER + 1))
    done <<< "$FOLDERS"
    
    echo ""
    echo "---"
    FIRST_FOLDER=$(echo "$FOLDERS" | head -n 1)
    echo "Opening first match: $FIRST_FOLDER"
    agy "$FIRST_FOLDER"
    echo "✓ Opened with Antigravity"
fi
