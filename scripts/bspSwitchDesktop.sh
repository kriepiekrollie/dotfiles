declare -a desktops=(
[0]=X
[1]=I
[2]=II
[3]=III
[4]=IV
[5]=V
[6]=VI
[7]=VII
[8]=VIII
[9]=IX
)
if [ $(bspc query -M -m .focused --names) = *HDMI* ]; then
    bspc desktop -f ${desktops[$1]};
    bspc desktop -f X${desktops[$1]};
else
    bspc desktop -f X${desktops[$1]};
    bspc desktop -f ${desktops[$1]};
fi
