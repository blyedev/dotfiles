#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTSIZE=10000

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Allow terminal windows to resize
shopt -s checkwinsize

# Lookup unknown commands in package manager
source /usr/share/doc/pkgfile/command-not-found.bash

# Set up nvm to manage node versions
source /usr/share/nvm/init-nvm.sh

# Use a custom bash prompt
eval "$(starship init bash)"
