#!/bin/bash
# source ~/Code/github/_script/roc-alias.sh ~/Code/github/_script

if [ -n "$ZSH_VERSION" ]; then
  _DIR="${(%):-%x}"
else
  _DIR="${BASH_SOURCE[0]}"
fi
ROC_SCRIPTS_DIR="${1:-$(cd "$(dirname "$_DIR")" 2>/dev/null && pwd)}"

# sh
alias ",hs"="history | grep $2"

alias ",hn"="hugo new"
alias ",hg"="sh $ROC_SCRIPTS_DIR/hugo/hugo-generate.sh"


# yarn
alias ",yll"="sh $ROC_SCRIPTS_DIR/yarn/yll.sh"
alias ",yls"="( ls -l node_modules ; ls -l node_modules/@* ) | grep ^l"
alias ",oyl"="open ~/.config/yarn/link"

# git
alias ",gam"="sh $ROC_SCRIPTS_DIR/git/gam.sh"
alias ",gpa"="sh $ROC_SCRIPTS_DIR/git/gpa.sh"
alias ",gpl"="sh $ROC_SCRIPTS_DIR/git/gpl.sh"
alias ",glg"="sh $ROC_SCRIPTS_DIR/git/glg.sh"
alias ",gst"="git stash"
alias ",gstp"="git stash pop"
alias ",gcp"="sh $ROC_SCRIPTS_DIR/git/gcp.sh"

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

# tu
alias ,tu="tu antigravity sync && tu --today"
alias ,tui="tu antigravity sync && tu tui"

# misc
unalias ,mcd 2>/dev/null
,mcd() { mkdir -p "$1" && cd "$1"; }

unalias ,kp 2>/dev/null
,kp() {
  if [ -z "$1" ]; then
    echo "Usage: ,kp <port>"
    return 1
  fi
  local pids
  pids=$(lsof -ti :"$1" | sort -u)
  if [ -n "$pids" ]; then
    local display_pids=$(echo "$pids" | tr '\n' ' ' | xargs)
    echo "Killing process(es) on port $1: $display_pids"
    echo "$pids" | xargs kill -9 2>/dev/null
  else
    echo "No process found on port $1"
  fi
}
alias ",lp"="lsof -i -P -n | grep LISTEN"
alias ",cpw"="pbcopy < "
alias ",zip"="bash $ROC_SCRIPTS_DIR/scripts/extract.sh"
alias ",rmdep"="find . -name 'node_modules' -type d -prune -exec rm -rf '{}' +"
alias ",pu"="export PROMPT='sundaysun %~ %# '"

alias ",clsdns"="sh $ROC_SCRIPTS_DIR/clsdns.sh"
# alias ",relp"="cd $ROC_SCRIPTS_DIR/scripts/relative-path && pipenv run dev"
alias ",relp"="bash $ROC_SCRIPTS_DIR/scripts/relative-path.sh"
alias ",kill"="sh $ROC_SCRIPTS_DIR/kill-port.sh"
