# source ~/Code/github/_script/roc-alias.sh ~/Code/github/_script

# sh
alias ",hs"="history | grep $2"

alias ",hn"="hugo new"
alias ",hg"="sh $1/hugo/hugo-generate.sh"
alias ",kp"="bunx kp"

# yarn
alias ",yll"="sh $1/yarn/yll.sh"
alias ",yls"="( ls -l node_modules ; ls -l node_modules/@* ) | grep ^l"
alias ",oyl"="open ~/.config/yarn/link"

# git
alias ",gam"="sh $1/git/gam.sh"
alias ",gpa"="sh $1/git/gpa.sh"
alias ",gpl"="sh $1/git/gpl.sh"
alias ",glg"="sh $1/git/glg.sh"
alias ",gst"="git stash"
alias ",gstp"="git stash pop"

# bun
alias ",br"="bun run"
alias ",bre"="bun run esboot"
alias ",bd"="bun dev"
alias ",bb"="bun run build"
alias ",bi"="bun install"
alias ",bx"="bunx"

# pnpm
alias ",pi"="pnpm install"
alias ",pr"="pnpm remove"
alias ",pl"="pnpm link --global"
alias ",pp"="pnpm publish --no-git-checks --access public"

# py
alias ",py"="python"
alias ",pip"="pip"
alias ",pe"="pipenv"
alias ",per"="pipenv run"

# rust
alias ",j"="just"

# misc
alias ",qdd"="osascript -e 'quit app \"DingTalk\"'"
alias ",clsdns"="sh $1/clsdns.sh"
# alias ",kp"="lsof -ti :$1 | xargs kill"
# alias ",relp"="cd $1/scripts/relative-path && pipenv run dev"
alias ",relp"="python3 $1/scripts/relative-path/index.py"
