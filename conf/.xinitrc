#!/bin/sh

# cursor
xrdb ~/.Xresources &

# wm
exec ck-launch-session dbus-launch i3
