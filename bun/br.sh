current_sub_cmd="dev"

if [ -n "$1" ]; then
  current_sub_cmd="$1"
fi

bun "$current_sub_cmd"
