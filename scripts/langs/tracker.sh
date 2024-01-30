#!/bin/bash

backup_dir=$2
toggle=$3
# This script is used to track the changes in the files in a target directory

if changes are made to a file bigger than 10 bytes to a given time, then the file should be copied to a backup directory with a timestamp and should be recompiled by the g++ comiler. This should happen until we use a toggle in the script. the script should detect an "ON" and "OFF" anywhere in the script to get if the script which automatically recompiles is active or not. and the output should be stored in a file with the same name as the source file in the backup directory. The script should also detect if the file is a .cpp file or a .c file and should compile accordingly. The script should also detect if the file is a .cpp file or a .c file and should compile accordingly. The script should also detect if the file is a .cpp file or a .c file and should compile accordingly. The script should also detect if the file is a .cpp file or a .c file and should compile accordingly. The script should also detect if the file is a .cpp file or a .c file and should compile accordingly.
[[ -d $target_dir ]] || echo "Target directory does not exist" && exit 1
[[ -d $backup_dir ]] || echo "Backup directory does not exist" && exit 1
[[ -z $toggle ]] && echo "Toggle is not set" && exit 1
[[ $toggle != "ON" ]] && [[ $toggle != "OFF" ]] && echo "Toggle is not set to ON or OFF" && exit 1

if [[ $toggle == "ON" ]]; then
    while true; do
        for file in $(find $target_dir -type f -size +10c); do
            cp $file $backup_dir/$(basename $file)_$(date +%Y%m%d%H%M%S)
            if [[ $file == *.cpp ]]; then
                g++ $file -o $backup_dir/$(basename $file)_$(date +%Y%m%d%H%M%S)
            elif [[ $file == *.c ]]; then
                gcc $file -o $backup_dir/$(basename $file)_$(date +%Y%m%d%H%M%S)
            fi
        done
        sleep 1
    done
fi

if [[ $toggle == "OFF" ]]; then
    echo "Toggle is set to OFF"
fi
}

:



tracker "@target_dir" "@backup_dir" "@toggle"
```
