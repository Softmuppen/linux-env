#!/usr/bin/env bash

ESSID=$(/sbin/iwconfig | perl -n -e'/ESSID:"(.*?)"/ && print $1')

echo " $ESSID"
