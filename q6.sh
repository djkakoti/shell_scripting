#!/bin/bash

echo "System Information Report" > q6_report.txt
echo ""
echo "Date and Time: $(date)" >> q6_report.txt
echo "User: $(whoami)" >> q6_report.txt
echo "Hostname: $(hostname)" >> q6_report.txt
echo "Working Directory: $(pwd)" >> q6_report.txt
echo "Available Disk Space:" >> q6_report.txt
df -h >> q6_report.txt
echo "Available Memory:" >> q6_report.txt
free -h >> q6_report.txt
echo ""
echo "System Uptime: $(uptime)" >> q6_report.txt

echo "Report saved in q6_report.txt"
