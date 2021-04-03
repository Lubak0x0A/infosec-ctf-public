# User Profile Customization
echo 'Updating .zshrc profile'
echo 'MSFLOGO=/usr/share/metasploit-framework/data/logos/haKCers.txt' >> ~/.zshrc
echo 'DAGENT="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36"' >> ~/.zshrc
echo 'MAGENT="Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1' >> ~/.zshrc
echo 'CAGENT="Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)"' >> ~/.zshrc
# Credit to Damien King at https://www.contextis.com/en/blog/logging-like-a-lumberjack and Mubix
echo 'PS1='[`date  +"%d-%b-%y %T"`] `DGTWINT=$(ip route get 1.1.1.1 | grep via | cut -f 5 -d " ") && FASTINT=$(grep ^ /dev/null  /sys/class/net/*/speed 2> /dev/null | sort -t: -k 2 | tail -1 | cut -f 5 -d "/") && if [ -n "${DGTWINT}" ] ; then TESTINT="${DGTWINT}"; else TESTINT="${FASTINT}"; fi && IPADDR=$(ip addr show dev "${TESTINT}" | grep "inet " | sed -e "s/.*inet //" | cut -f 1 -d "/") && echo "${TESTINT:0:1}:${IPADDR}"`> '
