#!/bin/sh

kill_process() {
    process_id="$(pidof -s '$1')"
    pkill -f "$1"
    waitpid "$process_id" 2> /dev/null
}

LIBSEAT_BACKEND=logind Hyprland > /dev/null
kill_process "hyprpaper"
kill_process "polkit-kde-authentication-agent-1"