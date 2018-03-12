#!/bin/bash
# --geometry=length x height + Xoffset + Yoffset
# screen res: 1366 * 768
# available icons: audio-x-generic, applications-multimedia
xfce4-terminal -e "env TERM=xterm-256color vis" --icon=audio-x-generic --hide-borders --hide-toolbar --hide-menubar --title=visbar --geometry=197x15+0+555 &  

wmctrl -r visbar -b add,sticky, above
wmctrl -r visbar -b add,skip_taskbar,skip_pager
# might need to export colours
# export TERM=xterm-256color