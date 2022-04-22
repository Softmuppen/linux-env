#!/bin/sh

# list profiles
profiles=$(ls ~/.screenlayout)

# let user select profile from list
selected_profile=$(zenity --list --title 'Arandr Profile Switcher' --column='0' --width=300 --height=300 --hide-header ${profiles})

# execute xrandr layout file
~/.screenlayout/${selected_profile}

# restart i3
i3-msg restart

exit 0
