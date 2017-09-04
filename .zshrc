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

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-bright.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Alt-direction word moving
bindkey "^[^[[D" backward-word
bindkey "^[^[[C" forward-word

# Fix Ctrl-A, Ctrl-B
bindkey -e

autoload -U zmv
