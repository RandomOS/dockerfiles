#!/bin/sh

PATH=$PATH:/sbin:/usr/sbin
ip=$(which ip)

if [ -n "$ip" ]; then
    ip link set "$1" up
else
    brctl=$(which brctl)
    if [ ! "$ip" -o ! "$brctl" ]; then
        echo "W: $0: not doing any bridge processing: neither ip nor brctl utility not found" >&2
        exit 0
    fi
    ifconfig "$1" 0.0.0.0 up
fi

br="br0"

if [ -d /sys/class/net/$br/bridge/. ]; then
    if [ -n "$ip" ]; then
        ip link set "$1" master "$br"
    else
        brctl addif $br "$1"
    fi
    exit
fi

echo "W: $0: no bridge for guest interface found" >&2
