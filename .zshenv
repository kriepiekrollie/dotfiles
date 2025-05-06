export ZSH_DIR=~/.zsh

export FZF_DEFAULT_OPTS=""

# export P10K_GREY='#585b70'
# export P10K_BLUE='#89b4fa'
# export P10K_MAGENTA='#cba6f7'
# export P10K_RED='#f38ba8'
# export P10K_YELLOW='#f9e2af'
# export P10K_CYAN='#94e2d5'
# export P10K_WHITE='#cdd6f4'

export PYTHONSTARTUP=$ZSH_DIR/python_startup.py

# nmtui lmao
export NEWT_COLORS='root=black,black
    title=white,black
    border=white,black
    window=white,black
    shadow=white,black
    compactbutton=green,black
    button=black,green
    actbutton=black,green
    checkbox=yellow,black
    actcheckbox=black,yellow
    entry=white,black
    disentry=gray,black
    label=blue,black
    listbox=white,black
    actlistbox=cyan,black
    sellistbox=cyan,black
    actsellistbox=cyan,black
    textbox=white,black
    acttextbox=black,red
    help=white,blue
    fullscale=,blue
    emptyscale=,red
'

export PATH="$PATH:$HOME/Code/Projects/cf-tool/target/debug"
