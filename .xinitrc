xrdb ~/.Xresources 
xset +fp /usr/share/fonts/local
xset +fp /usr/share/fonts/misc
xset +fp $HOME/.fonts
xset fp rehash
setxkbmap -layout pt &
#export GTK2_RC_FILES="$HOME/.gtkrc-2.0" &
xsetroot -cursor_name left_ptr &
compton &
nitrogen --restore &
unclutter &
corebird &
thunar &
transmission-gtk &
#start-pulseaudio-x11 &
clipit &
#plank &

xrdb -merge .Xresources &
#urxvt &
#panel &
udiskie &
sxhkd &
#panel &
exec bspwm

