#!/bin/bash
# quick translation of the python code from example
# bindsym Ctrl+Shift+t exec re-open.sh >>  ~/.config/i3/config

get_apps(){

ss -p | awk '{if (NR!=1) {print $7}}' | cut -d'"' -f2 | sort | uniq | awk '(NR>2)'#

}

open_apps_1 = $(get_apps())
echo "$open_apps_1"

while : ; do
        sleep 3
        open_apps_2 = $(get_apps())
        ${open_apps_1[@]} ${open_apps_2[@]} | tr ' ' '\n' | sort | uniq -u >> $XDG_CACHE_HOME/re_open/app_history
        closed_app=$( tail -n $XDG_CACHE_HOME/re_open/app_history)
        exec $closed_app

done

