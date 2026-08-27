#!/bin/bash

find / -type f -printf "%f\n" 2>/dev/null | sort | uniq -d
