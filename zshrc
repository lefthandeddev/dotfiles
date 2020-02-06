export ZSH="/Users/matthew.vance/.oh-my-zsh"

ZSH_THEME="miloshadzic"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git brew history node npm kubectl helm docker docker-compose vi-mode vscode common-aliases httpie)

source $ZSH/oh-my-zsh.sh

DEFAULT_USER="matthew.vance"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export GOPATH=$HOME/code/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

alias python=/usr/local/bin/python3
alias pip=/usr/local/bin/pip3
