#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi


# Created by `pipx` on 2025-01-07 23:17:39
export PATH="$PATH:/home/blyedev/.local/bin"
