export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_STYLE_OVERRIDE="kvantum"

export SCRIPTS="$HOME/.scripts"
export SCREENSHOTS="$HOME/Pictures/Screenshots"
export WALLPAPERS="$HOME/Pictures/Wallpapers"

export EDITOR=vim
export VISUAL=nvim
export BROWSER=firefox

export GTK_THEME="catppuccin-mocha-mauve-standard+default"
export WINIT_X11_SCALE_FACTOR="1"

if [ -d "$SCRIPTS" ] ; then
    PATH="$SCRIPTS:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/.cargo/bin" ] ; then
   $PATH="$HOME/.cargo/bin:$PATH"
fi
