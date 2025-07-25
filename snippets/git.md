# Git

## Readable table format

`git log --pretty=format:'%C(blue)%ai %C(yellow)%h %C(green)%an %C(cyan)%s %C(magenta)%d'`

## Ultimate git log

`git log --pretty=format:'%C(blue)%ai [%ar] %C(yellow)%h %C(green)%an %C(cyan)%s %C(magenta)%d' --graph`

## Branch graph

`git log --oneline --graph --date-order`

## Normal graph

`git log --graph --date-order`

## View changed files

`git log --name-status --oneline`

## Remove remote

`git remote remove origin`

## Change remote repo

`git remote set-url origin git://new.url.here`

## Squash commits

`git rebase -i HEAD~10`

## Set a different username / email for single repo

`git config --local user.email "test@example.com"`

## Ask for username & password every time for single repo

`git config --local credential.helper ''`

## Revert last local commit

`git reset HEAD~`

## Revert a rebase

1. `git reflog`
2. `git reset --hard HEAD@{2}` ('2' is the number next to the commit to reset to)

## Why is file being ignored?

`git check-ignore --verbose path/to/file` will tell you the gitignore rule that ignores it.
