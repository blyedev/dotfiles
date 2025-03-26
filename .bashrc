#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTSIZE=10000

EDITOR=nvim

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias k='kubectl'

# Enable kubectl autocompletion
source <(kubectl completion bash)

# Enable autocompletion for the k alias
complete -F __start_kubectl k

docker() {
    sudo docker "$@"
}

# Allow terminal windows to resize
shopt -s checkwinsize

export NVM_DIR="$HOME/.nvm"
    [ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" # This loads nvm
    [ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

# Because we use a 3 line long bash prompt we need to shorten `less` output
export LESS_LINES=-2

# Use a custom bash prompt
eval "$(starship init bash)"

. "$HOME/.cargo/env"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"
eval "$(pyenv virtualenv-init -)"

# Created by `pipx` on 2025-03-15 08:56:09
export PATH="$PATH:$HOME/.local/bin"

# Added by LM Studio CLI (lms)
export PATH="$PATH:$HOME/.lmstudio/bin"
