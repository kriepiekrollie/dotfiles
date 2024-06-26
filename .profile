export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_STYLE_OVERRIDE="kvantum"

export SCRIPTS="$HOME/.scripts"
export SCREENSHOTS="$HOME/Pictures/Screenshots"
export WALLPAPERS="$HOME/Pictures/Wallpapers"

export EDITOR=vim
export VISUAL=nvim
export BROWSER=firefox

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$SCRIPTS:$HOME/.local/bin:$HOME/.cargo/bin:$PATH"
fi
