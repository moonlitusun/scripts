# source ~/Code/github/_script/roc-alias.sh ~/Code/github/_script

alias _hn="hugo new"
alias _hg="sh $1/hugo/hugo-generate.sh"

# yarn
alias _yll="sh $1/yarn/yll.sh"
alias _yls="( ls -l node_modules ; ls -l node_modules/@* ) | grep ^l"
alias _oyl="open ~/.config/yarn/link"

# git
alias _gam="sh $1/git/gam.sh"
alias _gpa="sh $1/git/gpa.sh"
alias _gpl="sh $1/git/gpl.sh"
alias _glg="sh $1/git/glg.sh"

# bun
alias _br="bun run"
alias _bre="bun run esboot"
alias _bd="bun dev"
alias _bb="bun run build"
alias _bi="bun install"
alias _bx="bunx"

# pnpm
alias _pi="pnpm install"
alias _pr="pnpm remove"

# py
alias _py="python3"
alias _pip="pip3"

# misc
alias _qdd="osascript -e 'quit app \"DingTalk\"'"