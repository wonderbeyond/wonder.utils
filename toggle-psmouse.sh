#!/bin/bash
# Author: Wonder
# Description: Toggle Enable/Disable a device(psmouse as default)

# ``$xinput list`` can list all X input devices
device_name="${1-ImPS/2 ALPS GlidePoint}"
status_raw=`xinput list-props "${device_name}"|grep 'Device Enabled'`
status=${status_raw:${#status_raw}-1:1}

if [ x$status == x0 ]; then
    new_status=1
else
    new_status=0
fi

echo xinput set-prop "$device_name" "Device Enabled" $new_status
xinput set-prop "$device_name" "Device Enabled" $new_status
echo $new_status > ~/.config/psmouse_last_status
