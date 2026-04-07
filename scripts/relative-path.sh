#!/bin/bash
TARGET="$1"
if [ -z "$TARGET" ]; then
    exit 1
fi

get_abs_path() {
    local target="$1"
    if [ -d "$target" ]; then
        echo "$(cd "$target" >/dev/null 2>&1 && pwd)"
    else
        echo "$(cd "$(dirname "$target")" >/dev/null 2>&1 && pwd)/$(basename "$target")"
    fi
}

TARGET_PATH=$(get_abs_path "$TARGET")
BASE_PATH=$(pwd)

if [ "$TARGET_PATH" = "$BASE_PATH" ]; then
    REL_PATH="."
else
    common_part="$BASE_PATH"
    result=""
    
    while [[ "${TARGET_PATH#$common_part}" == "${TARGET_PATH}" ]]; do
        if [ -z "$common_part" ] || [ "$common_part" = "/" ]; then
            break
        fi
        common_part="$(dirname "$common_part")"
        result="../$result"
    done
    
    if [ "$common_part" = "/" ]; then
        common_part=""
    fi
    
    if [ -n "$common_part" ]; then
        forward_part="${TARGET_PATH#$common_part/}"
    else
        forward_part="${TARGET_PATH#/}"
    fi
    
    REL_PATH="${result}${forward_part}"
    REL_PATH="${REL_PATH%/}"
fi

echo "$REL_PATH"
# Copy to clipboard (macOS)
if command -v pbcopy >/dev/null 2>&1; then
    echo -n "$REL_PATH" | pbcopy
fi
