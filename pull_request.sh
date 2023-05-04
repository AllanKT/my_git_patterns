#!/bin/bash

# ano-mes-dia
# git log --since="2023-05-04T18:35:00"

# LOGS=`git log --oneline main..develop --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit`
# LOGS=`git log main..develop --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative`
LOGS=`git log origin/main..HEAD --graph --pretty=format:'%Cred%h%Creset - %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative --no-merges`
echo "${LOGS}"

# main -> develop
gh pr create --base $1 --head $2 --title "PULL REQUEST" --body "$LOGS"
# gh pr create --title "PULL REQUEST" --fill
# git log --oneline --cherry main...develop


# git log --oneline --raw -m