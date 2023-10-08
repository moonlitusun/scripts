current_sub_cmd="dev"

if [-n "$1"]; then
  current_sub_cmd=$1
fi

bun run $current_sub_cmd