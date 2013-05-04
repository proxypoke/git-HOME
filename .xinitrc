# merge xrdb
xrdb -merge "$HOME/.Xresources"

# urxvtd
urxvtd -q -o -f

# xinput
source "$HOME/.xinputrc"

# xrandr
source "$HOME/.xrandrrc" &

# no beep
xset -b

# compose key
xmodmap ~/.Xmodmap

# hide mouse pointer while idle
unclutter -idle 1 -root &

# font path
xset +fp /usr/share/fonts/local
xset fp rehash

# GTK theme for Qt
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

# restore wallpaper
eval $(cat ~/.fehbg)

# start i3
exec dbus-launch i3
