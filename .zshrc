#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Alt-direction word moving
bindkey "^[^[[D" backward-word
bindkey "^[^[[C" forward-word

# Fix Ctrl-A, Ctrl-B
bindkey -e

eval "$(docker-machine env default)"
