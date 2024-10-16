#!/bin/bash
# Task 6 - System Monitoring

# CPU Monitoring
zones=(
	"/sys/class/thermal/thermal_zone4/temp"
	"/sys/class/thermal/thermal_zone5/temp"
	"/sys/class/thermal/thermal_zone7/temp"
)

while true; do
	echo "----------------------------"
	echo "CPU TEMP"
	for zone in "${zones[@]}"; do
		temp=$(cat $zone)
		temp_c=$(echo "scale=1; $temp / 1000" | bc)
		echo "$zone: $temp_c°C"
	done
	echo "----------------------------"
	echo "CPU USAGE"
	mpstat
	echo "............................"
	echo "MEMORY USAGE"
	free -h
	echo "----------------------------"
	echo "CONNECTED HARDWARE"
	lsusb
	echo "----------------------------"
	sleep 5
done


