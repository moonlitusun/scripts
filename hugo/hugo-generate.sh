# cmd _hg
path="$PWD"
repo_name="~moonlit-private"
repo_path="${path%%$repo_name*}$repo_name"
target_path="${path#*$repo_name/}"

if [ "$2" = "-c" ]; then
  mkdir "./$1"
  cd "./$1" || exit 1
  mkdir "./.code"
  target_path="$target_path/$1/$1.md"
else
  target_path="$target_path/$1.md"
fi

echo $target_path
cd $repo_path
hugo new "$target_path" -c "./."

sleep 1

# use vscode
if command -v code >/dev/null 2>&1; then
  code "$target_path"
fi
