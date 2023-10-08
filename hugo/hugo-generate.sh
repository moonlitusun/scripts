# cmd _hg
path="$PWD"
repo_name="moonlit-private"
repo_path="${path%%$repo_name*}$repo_name"
target_path="${path#*$repo_name/}"

if [ "$2" = "-c" ]; then
  mkdir "./$1"
  cd "./$1" || exit 1
  mkdir "./.code"
  target_path="$target_path/$1"
fi

cd $repo_path
hugo new "$target_path/$1.md"
