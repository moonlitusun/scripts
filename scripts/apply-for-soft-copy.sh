#!/bin/bash

# Extract up to 3500 non-empty lines from x/**/*.tsx and output to source_code.txt
MAX_LINES=3500
LINE_COUNT=0
OUTPUT="./source_code.txt"

# Empty the output file
: > "$OUTPUT"

# Use find to get all .tsx files inside x/ directory
find x -name "*.tsx" -type f 2>/dev/null | while read -r file; do
    echo "$file"
    while IFS= read -r line; do
        # Trim leading and trailing whitespace
        trimmed="$(echo "$line" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')"
        
        if [ -n "$trimmed" ]; then
            LINE_COUNT=$((LINE_COUNT + 1))
            echo "${LINE_COUNT}: $trimmed"
            echo "$trimmed" >> "$OUTPUT"
            
            if [ "$LINE_COUNT" -ge "$MAX_LINES" ]; then
                break 2
            fi
        fi
    done < "$file"
done

echo "Extracted $LINE_COUNT lines to $OUTPUT"
