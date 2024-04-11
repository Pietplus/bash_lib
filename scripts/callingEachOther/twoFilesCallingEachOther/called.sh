#!/bin/bash

x=0;
toggle=true;

while [ $x -lt 100 ]; 
    do
    echo $x | tee -a log.txt 2>&1;
    x=$((x+1));
    done 
    toggle=false;
    ./pog.sh $toggle;
    if [ $x -eq 100];
    do
    echo "done";
    exit 0;
    done
