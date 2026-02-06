#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title snippet
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖
# @raycast.argument1 { "type": "text", "placeholder": "Placeholder" }

# Documentation:
# @raycast.author roc_sun
# @raycast.authorURL https://raycast.com/roc_sun

# Declare a key-value structure using an associative array
declare -A my_list=(
    ["key1"]="value1"
    ["key2"]="value2"
    ["key3"]="value3"
)

# Initialize a variable to store the result
result=""

# Iterate over the list to find the matching key
for key in "${!my_list[@]}"; do
    if [[ "$key" == "$1" ]]; then
        result="${my_list[$key]}"
        break
    fi
done

# Copy the result to the clipboard
if [[ -n "$result" ]]; then
    echo -n "$result" | xclip -selection clipboard
    echo "Result '$result' copied to clipboard."
else
    echo "No matching key found."
fi

