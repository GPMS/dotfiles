#!/bin/sh

find . -name "*.bpg" -exec bash -c '
    function convert()
    {
        echo "$@"
        filename="${@%.*}"
        bpgdec "$@" -o "$filename.png" && rm "$1"
    }
    convert $@' bash {} \;

echo "...Done"
