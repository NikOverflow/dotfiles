#!/bin/sh

kill_process() {
    process_name="$1"
    process_id="$(pidof -s '$process_name')"
    kill -TERM "$process_id" 2> /dev/null
    while ps -eo pid | grep "$process_id" > /dev/null; do true; done
}

Hyprland
kill_process "polkit-kde-authentication-agent-1"
kill_process "hyprpaper"