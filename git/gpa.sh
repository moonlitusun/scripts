#!/bin/bash
current_branch=$(git rev-parse --abbrev-ref HEAD)

for remote in $(git remote); do
  git push $remote $current_branch
done
