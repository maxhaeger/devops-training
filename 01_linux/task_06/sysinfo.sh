#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo "Dieses Skript erfordert Root-Rechte. Führe es mit sudo aus."
    exit 1
fi

cpu_auslastung=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}')
memory_auslastung=$(free -m | awk '/Mem:/ {print $3}')
connected_hardware=$(lshw -short)

echo "CPU-Auslastung: $cpu_auslastung%"
echo "Speicherbelegung: $memory_auslastung MB"
echo "Angeschlossene Hardware:"
echo "$connected_hardware"