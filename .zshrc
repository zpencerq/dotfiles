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

alias zshconfig="$EDITOR ~/.zshrc"
alias vinstall="vim +PluginInstall +qall"
alias tls="tmux list-sessions"
alias ta="tmux attach-session"

# User configuration
export DEFAULT_USER='zpencer'
export PATH=$HOME/bin:/usr/local/bin:$PATH
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export TERM=xterm-256color
export GOROOT="/usr/local/Cellar/go/1.4.1/libexec"
export GOPATH=~/Code/go
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:~/.cabal/bin
export ANDROID_HOME=~/Library/Android/sdk
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_67.jdk/Contents/Home
export JAVA8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home

# Alt-direction word moving
bindkey "^[^[[D" backward-word
bindkey "^[^[[C" forward-word

# Fix Ctrl-A, Ctrl-B
bindkey -e

eval "$(docker-machine env default)"
