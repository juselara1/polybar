#!/usr/bin/env bash
source "${HOME}/.config/polybar/scripts/pbar.sh"

ram_usage=`free | grep Mem | awk '{print int($3/$2 * 100.0)}'`
printf "🐏 "
pbar "${ram_usage}"
