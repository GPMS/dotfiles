#!/bin/sh

printf "New browser: "
read -r browser

xdg-mime default "$browser" x-scheme-handler/http
xdg-mime default "$browser" x-scheme-handler/https
