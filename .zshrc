# --- Keybindings --- #
bindkey -v
bindkey "^[[3~" delete-char
bindkey "^H" backward-delete-char
bindkey "^?" backward-delete-char

if ! [[ -n $DISPLAY ]]; then
    PROMPT=$'%n@%m:%d%{\e[0m%} > '
else

# --- Powerlevel10k instant prompt --- # 
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# --- Powerlevel10k --- # 
source $ZSH_DIR/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# --- ZSH settings --- #
HISTFILE=~/.zsh_history
HISTSIZE=2000
SAVEHIST=10000
setopt autocd extendedglob notify
unsetopt beep nomatch
autoload -U compinit; compinit

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

# --- bat for man --- #
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT="-c"

# --- zoxide --- #
eval "$(zoxide init --cmd=cd  zsh)"

fi
