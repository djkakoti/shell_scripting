#!/bin/bash

check_directory()
{
    dir=$1

    if [ ! -d "$dir" ]
    then
        echo "$dir does not exist"
        return
    fi

    echo "Directory: $dir"

    files=$(find "$dir" -type f | wc -l)
    echo "Number of files: $files"

    size=$(du -sh "$dir" | cut -f1)
    echo "Disk usage: $size"

    size_kb=$(du -s "$dir" | cut -f1)


    echo
}

for dir in "$@"
do
    check_directory "$dir"
done
