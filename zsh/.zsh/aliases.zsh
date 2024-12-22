# Navigation

alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Directories

alias dotfiles="cd $DOTFILES"
alias dots="dotfiles"

alias library="cd $HOME/Library"

alias downloads="cd $HOME/Downloads"
alias dls="downloads"

alias projects="cd $HOME/Developer/Personal"
alias prjs="projects"

alias work="cd $HOME/Developer/Work"
alias wrk="work"

# Git

alias g="git"
alias gs="git status"
alias gb="git branch"
alias gc="git checkout"
# alias gl="git log --oneline --decorate --color"
# alias amend="git add . && git commit --amend --no-edit"
# alias commit="git add . && git commit -m"
# alias diff="git diff"
# alias force="git push --force-with-lease"
# alias nuke="git clean -df && git reset --hard"
# alias pop="git stash pop"
# alias prune="git fetch --prune"
# alias pull="git pull"
# alias push="git push"
# alias resolve="git add . && git commit --no-edit"
# alias stash="git stash -u"
# alias unstage="git restore --staged ."
# alias wip="commit wip"

# Shortcuts

alias c='clear'

## List all files colorized in long format
alias l="eza --icons -lF"

## List all files colorized in long format, excluding . and ..
alias la="eza --icons -lAF"
