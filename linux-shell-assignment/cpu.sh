#!/bin/bash
# Purpose: Log CPU and Memory usage
# Author: Yaksh Kundu
# Date: 2025-11-18

OUTPUT_FILE="system_monitor.log"

# Write Header
echo "System Metrics Log - $(date)" >> $OUTPUT_FILE
echo "---------------------------------" >> $OUTPUT_FILE

# Capture Memory Usage
echo "Memory Usage:" >> $OUTPUT_FILE
free -h >> $OUTPUT_FILE

# Capture CPU Load (first 5 lines of top)
echo "---------------------------------" >> $OUTPUT_FILE
echo "CPU Load:" >> $OUTPUT_FILE
top -b -n 1 | head -n 5 >> $OUTPUT_FILE

echo "Metrics saved to $OUTPUT_FILE"
