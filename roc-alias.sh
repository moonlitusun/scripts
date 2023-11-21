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
alias _pl="pnpm link --global"

# py
alias _py="python3"
alias _pip="pip3"
alias _pe="pipenv"
alias _per="pipenv run"

# misc
alias _qdd="osascript -e 'quit app \"DingTalk\"'"
alias _clsdns="sh $1/clsdns.sh"
alias _kp="lsof -ti :$1 | xargs kill"
# alias _relp="cd $1/scripts/relative-path && pipenv run dev"
alias _relp="python3 $1/scripts/relative-path/index.py"
