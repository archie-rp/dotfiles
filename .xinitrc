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
clipit &

xrdb -merge .Xresources &
udiskie &
sxhkd &
pkill panel && panel &
[ -e "$PANEL_FIFO" ] && rm "$PANEL_FIFO"
mkfifo "$PANEL_FIFO"
exec bspwm -s "$PANEL_FIFO" -p W


