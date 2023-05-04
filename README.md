# my_git_patterns
my git patterns


pre-commit clean
pre-commit install
pre-commit autoupdate
pre-commit run --all-files -v --show-diff-on-failure


docs:
https://pre-commit.com/#usage-in-continuous-integration

ci:
https://pre-commit.ci/

action:
https://github.com/pre-commit/action


gh pull request:
gh pr create --base master --title "My first cli PR" --body "What did I do?"

git log $(git merge-base main develop) develop --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit >> message.txt
