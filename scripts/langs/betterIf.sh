#!/bin/bash

if [[ "$EDITOR" == "" ]]; then
    EDITOR="vim";
else
    EDITOR="nano";
fi


# Path: if.sh   
[-z "$EDITOR"] && EDITOR="vim" || EDITOR="nvim";


