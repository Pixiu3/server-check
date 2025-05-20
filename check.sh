#!/bin/bash

echo "========== Server Health Check =========="
echo "Date & Time     : $(date)"
echo "Hostname        : $(hostname)"
echo "-----------------------------------------"

# CPU
echo "CPU Load        : $(uptime | awk -F'load average:' '{ print $2 }')"

# Memory
echo "Memory Usage    :"
free -h

# Disk
echo "Disk Usage      :"
df -h / | sed '1d'

# Top 5 Memory-Consuming Processes
echo "Top 5 Memory-Consuming Processes:"
ps aux --sort=-%mem | head -n 6

# Network
echo "Checking internet connectivity..."
ping -c 2 baidu.com &>/dev/null && echo "Internet        : OK" || echo "Internet        : FAIL"

echo "========================================="
