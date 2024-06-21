# Setup fzf
# ---------
if [[ ! "$PATH" == *$ZSH_DIR/fzf/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}$ZSH_DIR/fzf/fzf/bin"
fi

source <(fzf --zsh)
