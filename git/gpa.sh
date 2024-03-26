#!/bin/bash
current_branch=$(git rev-parse --abbrev-ref HEAD)

for remote in $(git remote); do
  if [ "$remote" == "upstream" ]; then
    continue
  fi

  git push $remote $current_branch
done
