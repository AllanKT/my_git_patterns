#!/bin/bash

LOGS=`git log $(git merge-base main develop) develop --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit`
echo "${LOGS}"

# gh pr create --base master --title "PULL REQUEST" --body "$LOGS"
gh pr create --base master -f
