#!/bin/sh

# cursor
xrdb ~/.Xresources &

# wm
#exec i3
exec ck-launch-session dbus-launch i3

# screen lock
xautolock -time 5 -locker slock-screen-off
