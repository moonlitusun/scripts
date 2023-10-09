#!/bin/bash
current_branch=$(git rev-parse --abbrev-ref HEAD)
current_remote="origin"

if [ -n "$1" ]; then
  current_remote=$1
fi

git pull $current_remote $current_branch
