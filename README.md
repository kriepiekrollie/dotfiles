# my dotfiles

I'm using Arch, btw.

To easily clone these dotfiles, use [GNU](https://www.gnu.org/software/stow/)[ stow](https://archlinux.org/packages/extra/any/stow/):

```
gh repo clone kriepiekrollie/dotfiles -- --recurse-submodules
cd dotfiles
stow .
```

# Reminder

To list all installed packages with pacman, run
```
pacman -Qe
```

# Device setup

These should already be installed:

- base
- linux
- linux-firmware

Definitely install and setup the following:

- grub
- efibootmgr
- sudo

Probably install one of the following:

- amd-ucode
- intel-ucode

## Networking
Enable `NetworkManager.service`.

- networkmanager
- ethtool

## Bluetooth

Enable `bluetooth.service`.

- bluez
- bluez-utils

## Pipewire

Enable `pipewire-pulse.service`.

- [pipewire](https://archlinux.org/packages/extra/x86_64/pipewire/)
- [pipewire-audio](https://archlinux.org/packages/extra/x86_64/pipewire-audio/)
- [pipewire-docs](https://archlinux.org/packages/extra/x86_64/pipewire-docs/)
- [pipewire-alsa](https://archlinux.org/packages/extra/x86_64/pipewire-alsa/)
- [pipewire-jack](https://archlinux.org/packages/extra/x86_64/pipewire-jack/)
- [pipewire-pulse](https://archlinux.org/packages/extra/x86_64/pipewire-pulse/)
- [wireplumber](https://archlinux.org/packages/extra/x86_64/wireplumber/)
- [qpwgraph](https://archlinux.org/packages/extra/x86_64/qpwgraph/)

Multilib support:

- [lib32-pipewire](https://archlinux.org/packages/multilib/x86_64/lib32-pipewire/)
- [lib32-pipewire-jack](https://archlinux.org/packages/multilib/x86_64/lib32-pipewire-jack/)

## Printing

Enable `cups.service`.

- cups
- cups-pdf

# Window Manager

## bspwm

I'm currently using [bspwm](https://github.com/baskerville/bspwm)

Firstly, install [whatever video drivers are necessary](https://wiki.archlinux.org/title/xorg#Driver_installation).

My config expects these packages:

- [xorg](https://archlinux.org/groups/x86_64/xorg/)
- [xorg-apps](https://archlinux.org/packages/extra/x86_64/xorg-apps/)
- [bspwm](https://archlinux.org/packages/extra/x86_64/bspwm/)
- [sxhkd](https://archlinux.org/packages/extra/x86_64/sxhkd/)
- [xdo](https://archlinux.org/packages/extra/x86_64/xdo/)
- [xdo](https://archlinux.org/packages/extra/x86_64/xdotool/)
- [polybar](https://archlinux.org/packages/extra/x86_64/polybar/)
- [rofi](https://archlinux.org/packages/extra/x86_64/rofi/)
- [picom](https://archlinux.org/packages/extra/x86_64/picom/)
- [dunst](https://archlinux.org/packages/extra/x86_64/dunst/)
- [feh](https://archlinux.org/packages/extra/x86_64/feh/)
- [brightnessctl](https://archlinux.org/packages/extra/x86_64/brightnessctl/)
- [polkit-gnome](https://archlinux.org/packages/extra/x86_64/polkit-gnome/)
- xdg-user-dirs
- gvfs

## Fonts
- [noto-fonts](https://archlinux.org/packages/extra/any/noto-fonts/)
- [noto-fonts-cjk](https://archlinux.org/packages/extra/any/noto-fonts-cjk/)
- [noto-fonts-emoji](https://archlinux.org/packages/extra/any/noto-fonts-emoji/)
- [noto-fonts-extra](https://archlinux.org/packages/extra/any/noto-fonts-extra/)
- [otf-firamono-nerd](https://archlinux.org/packages/extra/any/otf-firamono-nerd/)
- [ttf-firacode-nerd](https://archlinux.org/packages/extra/any/ttf-firacode-nerd/)
- [ttf-jetbrains-mono-nerd](https://archlinux.org/packages/extra/any/ttf-jetbrains-mono-nerd/)
- [ttf-mononoki-nerd](https://archlinux.org/packages/extra/any/ttf-mononoki-nerd/)
- [juliamono-nerd-font](https://github.com/mietzen/juliamono-nerd-font) (github)

# Apps
Here are some apps I like to have:
- [alacritty](https://archlinux.org/packages/extra/x86_64/alacritty/)
- [firefox](https://archlinux.org/packages/extra/x86_64/firefox/)
- [obs-studio](https://archlinux.org/packages/extra/x86_64/obs-studio/)
- [obsidian](https://archlinux.org/packages/extra/x86_64/obsidian/)
- [thunar](https://archlinux.org/packages/extra/x86_64/thunar/)
- [vlc](https://archlinux.org/packages/extra/x86_64/vlc/)
- [xed](https://archlinux.org/packages/extra/x86_64/xed/)
- blueman
- [sioyek](https://aur.archlinux.org/packages/sioyek) (AUR)
- [qdirstat](https://aur.archlinux.org/packages/qdirstat-bin) (AUR)

# Command-line tools
## Shell things

I use zsh

- [zsh](https://archlinux.org/packages/extra/x86_64/zsh/)
- [fzf](https://archlinux.org/packages/extra/x86_64/fzf/)
- [eza](https://archlinux.org/packages/extra/x86_64/eza/)
- [zoxide](https://archlinux.org/packages/extra/x86_64/zoxide/)
- bat

## Utilities

If ssh server, start `sshd.service`.

- man-db
- man-pages
- posix
- btop
- bc
- cpio
- [zip](https://archlinux.org/packages/extra/x86_64/zip/)
- [unzip](https://archlinux.org/packages/extra/x86_64/unzip/)
- [tree](https://archlinux.org/packages/extra/x86_64/tree/)
- [less](https://archlinux.org/packages/core/x86_64/less/)
- [neofetch](https://archlinux.org/packages/extra/any/neofetch/)
- [openssh](https://archlinux.org/packages/core/x86_64/openssh/)
- [tealdeer](https://archlinux.org/packages/extra/x86_64/tealdeer/)
- [tmux](https://archlinux.org/packages/extra/x86_64/tmux/)

## Text editors

- [nano](https://archlinux.org/packages/core/x86_64/nano/)
- [vi](https://archlinux.org/packages/core/x86_64/vi/)
- [vim](https://archlinux.org/packages/extra/x86_64/vim/)
- [neovim](https://archlinux.org/packages/extra/x86_64/neovim/)

## Development Tools

### Miscellaneous
- make
- fakeroot
- pkgconf
- posix-software-development
- debugedit
- meson

### Git
- [git](https://archlinux.org/packages/extra/x86_64/git/)
- [github-cli](https://archlinux.org/packages/extra/x86_64/github-cli/)

### C/C++
- gcc
- cmake
- clang
- posix-c-development

### Python
- [python](https://archlinux.org/packages/core/x86_64/python/)
- [python-pip](https://archlinux.org/packages/extra/any/python-pip/)
- [python-pipx](https://archlinux.org/packages/extra/any/python-pipx/)
- [python-pipenv](https://archlinux.org/packages/extra/any/python-pipenv/)
- ipython
- [pyright](https://archlinux.org/packages/extra/any/pyright/)

### Rust
- [rustup](https://archlinux.org/packages/extra/x86_64/rustup/)
- [rust-analyzer](https://archlinux.org/packages/extra/x86_64/rust-analyzer/)

### Javascript
- nodejs
- npm

### Lua
- lua
- lua-language-server

# Power Management

Enable `tlp.service` and `thermald.service`.

- tlp
- powertop
- thermald (intel)

I also made a script on my laptop to disable picom/polybar when AC is unplugged.

# Graphics Drivers and Libraries and things idek

Reference [hybrid graphics](https://wiki.archlinux.org/title/hybrid_graphics) or [nvidia](https://wiki.archlinux.org/title/NVIDIA).

I like disabling nvidia on my laptop entirely lmao.

- glad 2.0.6-3
- glu 9.0.3-1
- intel-gpu-tools 1.27-2
- intel-media-driver 24.2.3-1
- lib32-vulkan-intel 1:24.1.2-1
- lib32-vulkan-mesa-layers 1:24.1.2-1
- libva-intel-driver 2.4.1-2
- libva-mesa-driver 1:24.1.2-1
- libva-utils 2.22.0-1
- mesa-demos 9.0.0-4
- mesa-utils 9.0.0-4
- xf86-video-vesa 2.6.0-2

## Vulkan 

- vulkan-intel 1:24.1.2-1
- vulkan-mesa-layers 1:24.1.2-1
- vulkan-tools 1.3.269-1
- vulkan-validation-layers 1.3.275-1

## Nvidia
- nvidia
- nvidia-utils
- nvidia-settings
- libva-nvidia-driver
- lib32-nvidia-utils

# Theming
Theming is hell and i hate both gtk and qt

- [gnome-tweaks](https://archlinux.org/packages/extra/any/gnome-tweaks/)
- [kvantum](https://archlinux.org/packages/extra/x86_64/kvantum/)
- [kvantum-qt5](https://archlinux.org/packages/extra/x86_64/kvantum-qt5/)
- [lxappearance-gtk3](https://archlinux.org/packages/extra/x86_64/lxappearance/)
- [papirus-icon-theme](https://archlinux.org/packages/extra/any/papirus-icon-theme/)
- [papirus-folders-catppuccin-git](https://aur.archlinux.org/packages/papirus-folders-catppuccin-git) (AUR)

## GTK

install gnome-tweaks, and run the install script from [catppuccin](https://github.com/catppuccin/gtk/blob/main/docs/USAGE.md). 

## QT

install kvantum, and install [the catppuccin theme](https://github.com/catppuccin/Kvantum).

## icon theme
i was only able to get catppuccin folders to work in thunar after installing lxappearance.

## Firefox

[catppuccin](https://addons.mozilla.org/en-US/firefox/addon/catppuccin-mocha-mauve-git/)
