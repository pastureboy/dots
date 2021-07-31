#!/bin/sh
. "${HOME}/.cache/wal/colors.sh"

dmenu_run -fn "Monaco-12" -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15" -p "Run: " -h 50 -b
