#!/bin/bash
tcpdump -i tun0 -s 65535 -w /var/log/pcaps/`cat /home/lubak0x0a/.target`-`date +"%Y%m%d%k%M%S"`.pcap & 