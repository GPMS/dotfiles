#!/bin/bash

cd ..

find *ED* -name "*.flac" | sort -V > playlists/EDs.m3u
find *OP* -name "*.flac" | sort -V > playlists/OPs.m3u
find *OST* -name "*.flac" | sort -V > playlists/OSTs.m3u
find *Instrumental* -name "*.flac" | sort -V > playlists/Instrumental.m3u
find *挿入歌* -name "*.flac" | sort -V > playlists/挿入歌.m3u

# Get all unique names
all=$(echo -e `find . -name "*.flac" -printf '%P\n' | cut -d "-" -f 1 | sort | uniq`)
IFS=' ' read -r -a series <<< $all

# Add all files
for item in "${series[@]}"; do
    echo "looking for $item"
    find $item-* -name "*.flac" | sort -V > playlists/$item.m3u
done

cd playlists

cat ./この素晴らしい世界に祝福を!.m3u ./この素晴らしい世界に祝福を!2.m3u > konosuba.m3u
cat ./オーバーロード.m3u ./オーバーロードⅡ.m3u ./オーバーロードⅢ.m3u > overlord.m3u
cat ./ソードアート・オンライン_1.m3u ./ソードアート・オンライン_2.m3u > sao.m3u
cat ./異世界かるてっと.m3u ./異世界かるてっと2.m3u > isekaiquartet.m3u
