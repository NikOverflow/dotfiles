#!/bin/sh

kill_process() {
    process_name="$1"
    process_id="$(ps -eo pid,cmd | awk -v pname="$process_name" '$0 ~ pname && !/awk/ {print $1}')"
    kill -TERM "$process_id" 2> /dev/null
    while ps -p "$process_id" > /dev/null; do true; done
}

Hyprland
kill_process "polkit-kde-authentication-agent-1"
kill_process "hyprpaper"