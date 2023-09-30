#!/bin/sh

cd ~
process_id="$(pidof -s 'wofi')"
pkill -f wofi
waitpid "$process_id" 2> /dev/null
wofi