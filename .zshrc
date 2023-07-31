# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
HIST_STAMPS="yyyy-mm-dd"
plugins=(
	git
	docker
	docker-compose
	yarn
	zsh-autocomplete
)
zstyle ':autocomplete:*' min-input 1  # int

source $ZSH/oh-my-zsh.sh

# User configuration
export LANG=en_US.UTF-8
export EDITOR="nvim"

# Shortcuts
alias rl="omz reload"
alias dev="cd ~/Developer/"
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
