import os, sys

CWD = os.getcwd() 
HOME = os.getenv('HOME') + "/"
print(HOME)
CONF = HOME + ".config/"

symlinks = [
    # ---------- Directories ---------- #
    ( "scripts",    HOME + ".scripts"   ),
    ( "zsh",        HOME + ".zsh"       ),
    ( "vim",        HOME + ".vim"       ),
    ( "bspwm",      CONF + "bspwm"      ),
    ( "sxhkd",      CONF + "sxhkd"      ),
    ( "picom",      CONF + "picom"      ),
    ( "polybar",    CONF + "polybar"    ),
    ( "rofi",       CONF + "rofi"       ),
    ( "alacritty",  CONF + "alacritty"  ),
    ( "nvim",       CONF + "nvim"       ),
    ( "bat",        CONF + "bat"        ),
    ( "btop",       CONF + "btop"       ),
    ( "sioyek",     CONF + "sioyek"     ),
    # ------------- Files ------------- #
    ( "zshrc",      HOME + ".zshrc"     ),
    ( "zshenv",     HOME + ".zshenv"    ),
    ( "p10k.zsh",   HOME + ".p10k.zsh"  ),
    ( "inputrc",    HOME + ".inputrc"   ),
    ( "haskeline",  HOME + ".haskeline" ),
    ( "vimrc",      HOME + ".vimrc"     ),
]
red = '\033[91m{}\033[0m'
green = '\033[92m{}\033[0m'
blue = '\033[94m{}\033[0m'
bold = '\033[1m{}\033[0m'
italics = '\033[3m\033[0m'
underline = '\033[4m\033[0m'

arrow = " ⤷ " if sys.stdout.encoding.lower().startswith('utf') else " -> "

errors_happened = False

for src, dest in symlinks:
    src = CWD + "/" + src
    print()
    print(src)
    print(arrow + dest)
    try:
        os.symlink(src, dest, True)
    except OSError as e:
        errors_happened = True
        print(bold.format(red.format("Failed to make symlink.")))
        print(e)

print()
if errors_happened:
    print(red.format("Failed to make all symlinks."))
else:
    print(green.format("Successfully made all symlinks."))
