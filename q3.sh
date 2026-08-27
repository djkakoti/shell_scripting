#!/bin/bash

du -sh "$HOME"/*/ 2>/dev/null | sort -hr | head -10
