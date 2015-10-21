#
# Executes commands at login post-zshrc.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Execute code that does not affect the current session in the background.
{
  # Compile the completion dump to increase startup speed.
  zcompdump="${ZDOTDIR:-$HOME}/.zcompdump"
  if [[ -s "$zcompdump" && (! -s "${zcompdump}.zwc" || "$zcompdump" -nt "${zcompdump}.zwc") ]]; then
    zcompile "$zcompdump"
  fi
} &!

# Print system information
if (( $+commands[archey] )); then
  archey -c
  print
fi

if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi

# Print a random, hopefully interesting, adage.
if (( $+commands[fortune] )); then
  fortune | cowsay -f $(ls /usr/local/share/cows | gshuf -n1) | lolcat
  print
fi

