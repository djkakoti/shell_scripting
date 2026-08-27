#!/bin/bash

PROJECT=$(pwd)

if [ -d "$PROJECT" ]
then
    echo "Total number of files:"
    find "$PROJECT" -type f | wc -l

    echo "Total disk usage:"
    du -sh "$PROJECT"

    echo "Files sorted by modification time:"
    ls -lt "$PROJECT"

    echo "Analysis Completed"
else
    echo "Directory does not exist"
fi
