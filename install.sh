#!/bin/sh
scriptPath="$(dirname $0)"
cd "$scriptPath/"

find "./" -type d -not -path "./.git*" -not -path "./" -exec chmod 700 "{}" \; -exec chown $USER:$USER "{}" \;
find "./" -type f -not -path "./.git*" -not -path "./" -not -path "./README.md" -not -path "./install.sh" -exec chmod 600 "{}" \; -exec chown $USER:$USER "{}" \;
find "./" -type f -not -path "./.git*" -not -path "./" -not -path "./README.md" -not -path "./install.sh" -name "*.sh" -exec chmod 700 "{}" \;
rsync -av --exclude ".git" --exclude "README.md" --exclude "install.sh" "./" "$HOME/"