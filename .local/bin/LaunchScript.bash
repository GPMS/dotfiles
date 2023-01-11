#!/bin/bash

pushd ~/.local/bin


py_scripts=`fd --regex ".py$"`
shell_scripts=`fd --regex ".(ba)?sh$"`
all_scripts=`echo "$py_scripts $shell_scripts"`

SCRIPT=$(echo $all_scripts | sed "s/ /\n/g" | dmenu -i -c -l 5 -p "Script:")

if [ -z "$SCRIPT" ]; then
    echo "No script!"
    exit
fi

$SCRIPT

popd
