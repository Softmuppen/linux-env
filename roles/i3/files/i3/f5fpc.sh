#!/bin/bash

cmd="$1"

vpn_status() {
    if f5fpc --info | grep vpn | grep established &> /dev/null
    then
        echo " "
    else
        echo " "
    fi
}

vpn_disable() {
    notify-send "Disabling VPN..."
    zenity --password | sudo -S f5fpc --stop
}

vpn_enable() {
    set +x
    notify-send "Enabling VPN..."
    form=$(zenity --forms --title="Connect to VPN" --text="Lolboll" \
        --add-entry="Username" \
        --add-password="Password" \
        --add-password="VPN Pin" \
        --add-password="OTP Password")

    local host=$(cat ~/.vpn/host)
    local username=$(echo ${form} | cut -d '|' -f 1)
    local password=$(echo ${form} | cut -d '|' -f 2)
    local vpn_pin=$(echo ${form} | cut -d '|' -f 3)
    local otp=$(echo ${form} | cut -d '|' -f 4)

    zenity --password | sudo -S f5fpc --start \
        --user "${username}" \
        --password "${vpn_pin}${otp}${password}" \
        --host "${host}" \
        --nocheck >/dev/null
}

vpn_toggle() {
    notify-send "Checking VPN status..."
    if f5fpc --info | grep vpn | grep established &> /dev/null
    then
        vpn_disable
    else
        vpn_enable
    fi
}

case "$1" in
    status)
        vpn_status
        ;;
    toggle)
        vpn_toggle
        ;;
    *)
        echo "Usage: $0 {status|toggle}"
        exit 2
esac

exit 0
