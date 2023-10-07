# cmd _hg
path="$PWD"
repo_name="moonlit-private"
repo_path="${path%%$repo_name*}$repo_name"
target_path="${path#*$repo_name/}"

cd $repo_path
hugo new "$target_path/$1.md"
