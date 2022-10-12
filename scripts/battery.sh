#!/bin/bash
source "${HOME}/.config/polybar/scripts/pbar.sh"

battery_usage=`upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep 'percentage' | sed 's/[^0-9]//g'`
battery_state=`upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep 'state' | awk '{print $2}' `

[[ ${battery_state} == 'charging' ]] && printf "⚡"
printf "🔋 "
pbar "${battery_usage}"
