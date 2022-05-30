# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/zshrc.pre.zsh"




# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
HIST_STAMPS="yyyy-mm-dd"
plugins=(git docker docker-compose yarn)
source $ZSH/oh-my-zsh.sh

# User configuration

export LANG=en_US.UTF-8

alias reload='omz reload'

alias dev="cd ~/Developer/"




# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/zshrc.post.zsh"
