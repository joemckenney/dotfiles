while xsetroot -name "`date +'%a %b %-d %-I:%M'` | `acpi -b | cut -d ',' -f 2`"
    do
        sleep 1m
done &

xrdb -merge ~/.Xresources

xset +fp /usr/share/fonts/local
xset fp rehash

xset r rate 175 25
xmodmap ~/.xmodmaprx
xrandr --output VGA1 --mode 1920x1080 --right-of LVDS1
exec dwm
