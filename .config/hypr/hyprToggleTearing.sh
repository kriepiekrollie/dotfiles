HYPRTEARING=$(hyprctl getoption general:allow_tearing | awk 'NR==1{print $2}')
if [ "$HYPRTEARING" = 1 ] ; then
    hyprctl --batch "keyword general:allow_tearing 0;"
    exit
fi
hyprctl reload

