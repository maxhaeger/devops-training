#!/bin/bash

echo "=== CPU Usage ==="
mpstat

echo "=== Memory Usage ==="
inxi -m | grep -E "Used|total"

echo "=== Disk Usage ==="
inxi -D | grep "Local Storage"

echo "=== Network Devices ==="
inxi -n | grep "Device"

echo "=== USB Devices ==="
inxi -A | grep "Device"

echo "=== Graphics Information ==="
inxi -G | grep -E "Device|driver"

echo "=== Connected Hardware ==="
inxi -Fxz | grep -E "Device|Model"


