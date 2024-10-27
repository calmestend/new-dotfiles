#!/bin/bash

while true
do
	player_status=$(playerctl -p tidal-hifi status 2> /dev/null)

	if [ "$player_status" = "Playing" ]; then
		artist=$(playerctl -p tidal-hifi metadata xesam:artist)
		title=$(playerctl -p tidal-hifi metadata xesam:title)
		echo ''" $artist - $title 🌸 "''
	elif [ "$player_status" = "Paused" ]; then
		artist=$(playerctl -p tidal-hifi metadata artist)
		title=$(playerctl -p tidal-hifi metadata title)
		echo ''" $artist - $title 🌱 "''
	fi
	sleep 1
done
