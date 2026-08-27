#!/bin/bash

PROCESS=$1

echo "Process Report" > q9_report.txt
echo "---------------" >> q9_report.txt

PID=$(pgrep "$PROCESS" | head -1)

if [ -n "$PID" ]
then
    echo "Process: $PROCESS" >> q9_report.txt
    echo "PID: $PID" >> q9_report.txt

    echo "CPU Usage:" >> q9_report.txt
    ps -p "$PID" -o %cpu= >> q9_report.txt

    echo "Memory Usage:" >> q9_report.txt
    ps -p "$PID" -o %mem= >> q9_report.txt

    echo "Process is running" >> q9_report.txt
else
    echo "Process $PROCESS not found" >> q9_report.txt
fi

echo "Report saved in q9_report.txt"
