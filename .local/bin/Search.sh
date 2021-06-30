#!/bin/sh

browser="chromium"

searchTerm="$( printf "" | dmenu -c -p "Search Term:")"
if [ -z "$searchTerm" ]; then
    echo "Empty search query!"
    exit
fi

cleanSearchTerm=$(echo $searchTerm | tr ' ' '+')

option=$(echo "Google\nYouTube\nReddit\n" | dmenu -c -l 8 -p "Search on:" )
case $option in
    "Google")
        url="www.google.com/search?q=$cleanSearchTerm"
        ;;
    "YouTube")
        url="www.youtube.com/results?search_query=$cleanSearchTerm"
        ;;
    "Reddit")
        url="www.reddit.com/search/?q=$searchTerm"
        ;;
    *)
        echo "Unknown Search Engine"
        exit
        ;;
esac

$browser "https://$url"
i3-msg "workspace 1"
