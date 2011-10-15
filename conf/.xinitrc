#!/bin/sh

# cursor
xrdb ~/.Xresources &

# wm
#exec i3
exec ck-launch-session dbus-launch i3

# key press rate/delay
xset -r rate 320 25
