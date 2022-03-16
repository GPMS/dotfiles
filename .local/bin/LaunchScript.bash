#!/bin/bash

pushd ~/.local/bin

SCRIPT=$(fd --regex ".(ba)?sh$" | dmenu -i -c -l 5 -p "Script:")

if [ -z "$SCRIPT" ]; then
    echo "No script!"
    exit
fi

$SCRIPT

popd
