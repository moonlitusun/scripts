#!/bin/bash

AUTHOR_ARGS=""
if [[ "$1" == "-u" || "$1" == "--user" || "$1" == "--author" ]]; then
    AUTHOR_ARGS="--author=$2"
    shift 2
elif [[ -n "$1" && "$1" != -* ]]; then
    # Support `glg.sh username` shorthand
    AUTHOR_ARGS="--author=$1"
    shift 1
fi

git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit $AUTHOR_ARGS "$@"