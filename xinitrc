#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

#Font dirs
xset +fp /usr/share/fonts/local
xset +fp /usr/share/fonts/misc
xset +fp /usr/share/fonts/TTF
xset +fp /usr/share/fonts/otf

hsetroot -tile /home/tadayoshi/repeatable_patterned_wallpaper3.jpg &
xrdb -load ~/.Xresources
#sxhkd &
#bspwm &
exec awesome
