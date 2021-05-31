#!/bin/bash
TARGET=`cat '/home/$(logname)/.target'`
tcpdump -i tun0 -s 65535 -w '/var/log/pcaps/'$TARGET'-'`date +"%Y%m%d%k%M%S"`.pcap -Z $(logname) & 
