#!/bin/bash
xfce4-terminal -e "cava" --hide-borders --hide-toolbar --hide-menubar --title=cavabar --geometry=197x15+0+540 &  
sleep 0.3
wmctrl -r cavabar -b add,below,sticky
wmctrl -r cavabar -b add,skip_taskbar,skip_pager
