#!/bin/bash
# From Michael Allen - https://www.youtube.com/watch?v=AHwfV3NFlno&t=4368s&ab_channel=BlackHillsInformationSecurity
# openvpn --script-securty 2 --down vpn-down.sh --config <.ovpn>
echo 'Disabling network interfaces...'
systemctl stop network-manaager
killall -9 dhclient
for i in $(ifconfig | grep iEo '^[a-z0-9]+:' | grep -v '^lo:$' | cut -d ':' -f 1)
do
    ifconfig $i 0.0.0.0 down
done