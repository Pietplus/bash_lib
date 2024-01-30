#!/bin/bash
set -euo pipefail
IFS=$'\n\t'
shopt -s nullglob
shopt -s globstar

cf() {
    if [[ $# -eq 0 ]]; then
        echo "Error: No arguments provided."
        return 1  # Exit with an error status
    else
        if [[ "$1" == "-help" || "$1" == "--help" ]]; then
            echo "cf create file with suffix and open it in nvim"
            echo "cf <text> <filename> <suffix>"
            echo "author: Piet"
            echo "version: 1.5"
            echo "updated: 2023-08-24"
            return 0
        fi

        if [[ $# -eq 1 ]]; then
            echo "Error: No filename provided."
            return 1  # Exit with an error status
        fi

        if [[ $# -eq 2 ]]; then
            echo "Error: No suffix provided."
            return 1  # Exit with an error status
        fi

        # 1. Write the value of the first argument ($1) to a file named "$2.$3"
        echo "$1" > "$2.$3"
        # 2. Open the file "$2.$3" using the nvim text editor
        nvim "$2.$3"
        return 0
    fi
}
