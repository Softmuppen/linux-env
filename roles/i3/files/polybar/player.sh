#!/bin/sh

player="$1"

player_status=$(playerctl -p ${player} status 2> /dev/null)
player_artist=$(playerctl -p ${player} metadata artist)
player_titles=$(playerctl -p ${player} metadata title)

if [ "$player_artist" != "" ]; then
	if [ "$player_status" = "Playing" ]; then
	    echo "%{F#FFF} $player_artist - $player_titles"
	elif [ "$player_status" = "Paused" ]; then
	    echo "%{F#FFF} $player_artist - $player_titles"
	elif [ "$player_status" = "Stopped" ]; then
	    echo "%{F#FFF} $player_artist - $player_titles"
	else
	    echo ""
    fi
fi
