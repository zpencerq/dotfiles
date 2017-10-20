# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/spencer/Code/dotfiles/.fzf/bin* ]]; then
  export PATH="$PATH:/Users/spencer/Code/dotfiles/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/spencer/Code/dotfiles/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/Users/spencer/Code/dotfiles/.fzf/shell/key-bindings.bash"

