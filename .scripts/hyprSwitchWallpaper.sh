
ACTIVE=$(hyprctl hyprpaper listactive | awk '{print $3}')

NEXT=$((find ~/Pictures/Wallpapers/ | sort | grep "$ACTIVE" -A1 | (cat ; (find ~/Pictures/Wallpapers/ | sort | sed '2q;d'))) | sed '2q;d')

IFS=$'\n'
for MONITOR in $(hyprctl monitors | grep -E '^(Monitor)' | awk '{print $2}')
do
    hyprctl hyprpaper wallpaper "$MONITOR,$NEXT"
done
