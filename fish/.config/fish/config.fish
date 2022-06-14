set -x XDG_CONFIG_HOME $HOME/.config

set -x GOROOT /usr/local/go 
set -x GOPATH $HOME/go
set -x PYENV_ROOT $HOME/.pyenv
#set -x JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk
set -x PATH $PATH $PYENV_ROOT/bin $GOPATH/bin
#set -x PATH $PATH $PYENV_ROOT/bin $GOPATH/bin $JAVA_HOME/bin

eval (pyenv init - | source)
eval (pyenv virtualenv-init - | source)

alias vim='nvim'
# aliases for git
alias g="git"
alias gad="git add"
alias gb="git branch -v"
alias gba="git branch -a"
alias gbr="git branch -r"
alias gc="git commit -v"
alias gco="git checkout"
alias gd="git diff"
alias gdc="git diff --cached"
alias gf="git fetch"
alias gg="git grep -n"
alias ggi="git grep -ni"
alias gl="git log --stat"
alias gll="git log --oneline"
alias glp="git log -p"
alias gls="git ls-files"
alias gm="git merge"
alias gst="git status"
alias gs="git show"
alias gsp="git stash pop"
alias gss="git stash save"
alias gssh="git stash show"
alias gsl="git stash list"
alias gPull="git pull"
alias up='cd ./$(git rev-parse --show-cdup)' # cd to current repo's root dir
# git current-branch: Show current branch
alias gcb="git symbolic-ref --short HEAD"

set -U FZF_LEGACY_KEYBINDINGS 0
set -U FZF_REVERSE_ISEARCH_OPTS "--reverse --height=100%"

function ghq_fzf_repo -d 'Repository search'
  ghq list --full-path | fzf --reverse --height=100% | read select
  [ -n "$select" ]; and cd "$select"
  echo " $select "
  commandline -f repaint
end

function fish_user_key_bindings
  # bind \cr peco_select_history 
  bind \cx\k peco_kill 
  bind \cg ghq_fzf_repo 
end

set -x FZF_DEFAULT_COMMAND 'rg --files --hidden --follow --glob "!.git/*"'
