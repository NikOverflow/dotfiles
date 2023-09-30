#!/bin/sh

kill_process() {
    process_id="$(pidof -s '$1')"
    pkill -f "$1"
    waitpid "$process_id"
}

Hyprland
kill_process "hyprpaper"
kill_process "polkit-kde-authentication-agent-1"