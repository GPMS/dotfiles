#!/bin/sh

for file in `find -name "*.bpg"`; do
    echo "$file"
    filename="${file%.*}"
    bpgdec "$file" -o "$filename.png" && rm "$file"
done

echo "...Done"
