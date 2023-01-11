#!/bin/python3

import os
import io

music_dir = f"{os.environ['HOME']}/Music/"
series_song = {}
types_song = {
    "OP": [],
    "ED": [],
    "OST": [],
    "BGM": []
}

def main():
    # Gather flac files and sort them into categories
    for file_name in os.listdir(music_dir):
        if ".flac" in file_name:
            try:
                (file_series_name, file_type_name, _, _) = file_name.split('-')
                if file_series_name not in series_song.keys():
                    print(f"New series '{file_series_name}'")
                    series_song[file_series_name] = []
                series_song[file_series_name].append(file_name)

                for type_name in types_song.keys():
                    if type_name in file_type_name:
                        types_song[file_type_name].append(file_name)
            except:
                # Ignore files not named according to this specific format: "series-type-artist-song.flac"
                pass
    # Generate playlist files from songs for each category
    for series_name in series_song:
        with io.open(f"{music_dir}playlists/{series_name}.m3u", "w", encoding="utf-8") as f:
            for song in series_song[series_name]:
                f.write(f"{music_dir}{song}\n")
    for type_name in types_song:
        with io.open(f"{music_dir}playlists/{type_name}.m3u", "w", encoding="utf-8") as f:
            for song in types_song[type_name]:
                f.write(f"{music_dir}{song}\n")

if __name__ == "__main__":
    main()
