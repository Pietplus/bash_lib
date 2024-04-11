#!/bin/bash

export toggle=true;

while [[ $toggle == true ]]; do
    [ "$toggle" != "$1" ] && echo "done" > log.txt 2>&1 || ./first.sh
done
echo "done";
exit 0;
