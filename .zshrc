bindkey -v
bindkey "^[[3~" delete-char
bindkey "^H" backward-delete-char
bindkey "^?" backward-delete-char
setopt autocd extendedglob notify
unsetopt beep nomatch
autoload -U compinit; compinit

# --- Powerlevel10k instant prompt --- # 
#  ( should stay near top of .zshrc )
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# --- History settings --- #
HISTFILE=~/.zsh_history
HISTSIZE=2000
SAVEHIST=10000

# --- fzf --- #

# https://github.com/junegunn/fzf
[ -f $ZSH_DIR/fzf/.fzf.zsh ] && source $ZSH_DIR/fzf/.fzf.zsh

# https://github.com/Aloxaf/fzf-tab
source $ZSH_DIR/fzf/fzf-tab/fzf-tab.plugin.zsh # must be after compinit
zstyle ':completion:*:git-checkout:*' sort false
zstyle ':completion:*:descriptions' format '[%d]'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
zstyle ':fzf-tab:*' switch-group '<' '>'

# --- zsh-syntax-highlighting --- #

# https://github.com/catppuccin/zsh-syntax-highlighting
# must be before zsh-syntax-highlighting.
# source $ZSH_DIR/zsh-syntax-highlighting/catppuccin/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh

# https://github.com/zsh-users/zsh-syntax-highlighting
# source $ZSH_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# --- powerlevel10k --- #
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source $ZSH_DIR/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
