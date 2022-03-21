#!/bin/bash
# quick translation of the python code from example
# bindsym Ctrl+Shift+t exec re-open.sh >>  ~/.config/i3/config
# --needed wmctrl

get_apps(){
pid=(wmctrl -lp | awk '{print $3}' | rs -c' ' -C' ' -T)
for app in $pid:
        ps -o cmd= app 
}

set open_apps_1 = get_apps()

while : do
        sleep 3
        set open_apps_2 = get_apps()
        ${open_apps_1[@]} ${open_apps_2[@]} | tr ' ' '\n' | sort | uniq -u >> $XDG_CACHE_HOME/re_open/app_history
        closed_app=$( tail -n $XDG_CACHE_HOME/re_open/app_history)
        exec $closed_app

done

