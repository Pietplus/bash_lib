#!/bin/bash

set -euo pipefail
IFS=$'\n\t'


#declare -r SCRIPT=${0##*/}

declare  -r DESK=/Users/piet/Desktop
#cd $DESK

showAccess(){
 ERRORMESSAGE="Usage: $0 <directory>"
 ADVICE="Try again with a valid directory"

# Check if argument is given otherwise exit
[[ -z $1 ]] && { echo $ERRORMESSAGE; echo $ADVICE; exit 1; }

# Sort files in any directory by privilege
find $1 -type f -exec ls -l {} + | sort -k1,1 -k2,2 -k3,3 -k4,4 -k5,5 -k6,6 -k7,7 -k8,8
}

showAccess $1
```

