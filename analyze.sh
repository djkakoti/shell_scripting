#!/bin/bash
FILE="students.csv"
if [ -f "$FILE" ]
then
    echo "Total lines:"
    wc -l "$FILE"
    echo "CSE Students:"
    grep -c "CSE" "$FILE"
    echo "EE Students:"
    grep -c "EE" "$FILE"
    echo "Analysis Completed"
else
    echo "Error: File not found"
    exit 1
fi
