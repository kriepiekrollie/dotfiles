#!/bin/bash

echo '
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣤⣤⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⠟⠉⠉⠉⠉⠉⠉⠉⠙⠻⢶⣄⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⡏⠀⠀⠀⠀⠀⠀    ⠀⠙⣷⡀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⡟⠀⣠⣶⠛⠛⠛⠛⠛⠛⠳⣦⡀⠀⠘⣿⡄⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⠁⠀⢹⣿⣦⣀⣀⣀⣀⣀⣠⣼⡇⠀⠀⠸⣷⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⡏⠀⠀⠀⠉⠛⠿⠿⠿⠿⠛⠋⠁⠀⠀⠀⠀⣿
      ⠀⠀⢠⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡇⠀
      ⠀⠀⣸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣧⠀
⠀⠀⠀⠀⠀⠀⠀⢸⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⠀
⠀⠀⠀⠀⠀⠀⠀⣾⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⠀⣿⠀
⠀⠀⠀⠀⠀⠀⠀⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⣿⠀
⠀⠀⠀⠀⠀⠀⢰⣿⠀⠀⠀⠀⣠⡶⠶⠿⠿⠿⠿⢷⣦⠀⠀⠀    ⣿⠀
⠀⠀⣀⣀⣀⠀⣸⡇⠀⠀⠀⠀⣿⡀⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⣿⠀
⣠⡿⠛⠛⠛⠛⠻⠀⠀⠀⠀⠀⢸⣇⠀⠀⠀⠀⠀⠀⣿⠇⠀⠀⠀⠀ ⠀⣿⠀
⢻⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⡟⠀⠀⢀⣤⣤⣴⣿⠀⠀⠀⠀  ⠀⣿⠀
⠈⠙⢷⣶⣦⣤⣤⣤⣴⣶⣾⠿⠛⠁⢀⣶⡟⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡟⠀
          ⠀⠀⠀⠀⠈⣿⣆⡀⠀⠀⠀⠀⠀⠀⢀⣠⣴⡾⠃⠀
               ⠈⠛⠻⢿⣿⣾⣿⡿⠿⠟⠋⠁⠀⠀⠀
'


CONFIG="$HOME/.config"
if ! [ -z "$XDG_CONFIG_HOME" ]; then
  CONFIG=$XDG_CONFIG_HOME
fi

create_symlink() {
    local name=$1
    local target=$2
    local link_name=$3

    echo -e "\e[36;1;4m$1\e[0m"

    if [ -L "$link_name" ]; then
        current_target=$(readlink "$link_name")
        if [ "$current_target" == "$target" ]; then
            echo -e "\e[32;1mSymlink already exists.\e[0m\n"
            return 0
        fi
    fi

    echo -e "Creating symlink:"
    echo -e "┌─$link_name"
    echo -e "└>$target"

    ln -s "$target" "$link_name"
    if [ $? -eq 0 ]; then
        echo -e "\e[32mSymlink created successfully.\e[0m\n"
        return 0
    else
        echo -e "\e[0m\n"
        return 1
    fi
}

config_dir_stuff=(
    "alacritty"
    "bat"
    "bspwm"
    "btop"
    "dunst"
    "nvim"
    "picom"
    "polybar"
    "qt5ct"
    "rofi"
    "sioyek"
    "sxhkd"
)

home_dir_stuff=(
    ".inputrc"
    ".p10k.zsh"
    ".profile"
    ".scripts"
    ".vim"
    ".vimrc"
    ".zsh"
    ".zshenv"
    ".zshrc"
)

for thing in ${config_dir_stuff[@]}; do
    create_symlink "$thing" "$PWD/$thing" "$CONFIG/$thing"
done

for thing in ${home_dir_stuff[@]}; do
    create_symlink "$thing" "$PWD/$thing" "$HOME/$thing"
done
