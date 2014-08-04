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

alias zshconfig="$EDITOR ~/.zshrc"
alias vinstall="vim +BundleInstall +qall"
alias tls="tmux list-sessions"
alias ta="tmux attach-session"

# User configuration
export DEFAULT_USER='neckbeard'
export PATH=$HOME/bin:/usr/local/bin:$PATH
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export TERM=xterm-256color
export GOROOT="/usr/local/Cellar/go/1.2.2/libexec"
export PATH=$PATH:$GOROOT/bin

# Alt-direction word moving
bindkey "^[^[[D" backward-word
bindkey "^[^[[C" forward-word

# Fix Ctrl-A, Ctrl-B
bindkey -e

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
