#!/bin/bash
source "${HOME}/.config/polybar/scripts/pbar.sh"

cpu_usage=`grep 'cpu ' /proc/stat | awk '{print int(100 * ($2 + $4) / ( $2 + $4 + $5))}'`
printf "💻 "
pbar "${cpu_usage}"
