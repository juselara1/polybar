#!/bin/bash
source "${HOME}/.config/polybar/scripts/pbar.sh"
gpu_usage=`nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits`
printf "🎮 "
pbar "${gpu_usage}"
