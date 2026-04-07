#!/bin/bash
# A script to automatically add, commit, and push

msg="${1:-update}"

git add .
git commit -m "$msg"
git push
