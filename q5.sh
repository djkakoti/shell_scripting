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

    if [ $size_kb -lt 102400 ]
    then
        echo "Size: Small"
    elif [ $size_kb -le 1048576 ]
    then
        echo "Size: Medium"
    else
        echo "Size: Large"
    fi

    echo
}

for dir in "$@"
do
    check_directory "$dir"
done
