# my_git_patterns
my git patterns

# Pre-commit

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

# GH commands

https://cli.github.com/

gh pull request:
gh pr create --base master --title "My first cli PR" --body "What did I do?"

# Git alias

windows path:
C:\Program Files\Git\etc\gitconfig

```
[alias]
	pc = "!cp \"${PROGRAMFILES}/Git/etc/.pre-commit-config.yaml\" ./"
	st = "!git status --short --branch"
	ps = "!git add . && git commit -am \"$1: $2\nRefs: [$3]\" && git push --set-upstream origin \"$(git rev-parse --abbrev-ref HEAD)\" && :"
	pl = "!git fetch origin \"$(git rev-parse --abbrev-ref HEAD)\" && git pull origin \"$(git rev-parse --abbrev-ref HEAD)\""
	pr = "!LOGS=`git log origin/main..\"$(git rev-parse --abbrev-ref HEAD)\" --graph --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --abbrev-commit --date=relative --no-merges` && gh pr create --base \"$1\" --head \"$(git rev-parse --abbrev-ref HEAD)\" --title \"PULL REQUEST\" --body \"$LOGS\" && :"
	lg = "!git log origin/main..\"$(git rev-parse --abbrev-ref HEAD)\" --graph --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --abbrev-commit --date=relative --no-merges"
	pcc = "!pre-commit clean"
	pci = "!pre-commit install"
	pca = "!pre-commit autoupdate"
	pcr = "!pre-commit run --all-files -v --show-diff-on-failure"

	alias = "!echo '\n• pc \t\t get template from pre-commit\n• gst \t\t status\n• ps \t\t add/commit/push complete\n• pl \t\t fetch and pull in this branch\n• lg \t\t get all logs betwenn this branch and main\n'"

```
