#!/bin/bash

dns_status() {
    if ping -c 1 google.com &> /dev/null
    then
        echo " "
    else
        echo " "
    fi
}

dns_restart() {
    notify-send "DNS Restart"
    zenity --password | sudo -S systemctl restart systemd-resolved
}

case "$1" in
    status)
        dns_status
        ;;
    restart)
        dns_restart
        ;;
    *)
        echo "Usage: $0 {status|toggle}"
        exit 2
esac

exit 0
