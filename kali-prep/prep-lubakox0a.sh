echo 'Updating Repositories and Upgrading Kali'
apt update && apt upgrade -y && apt autoremove && apt autoclean

echo 'Installing addtional packages from repositories'
apt install gobuster remmina terminator python3-pip -y

echo 'Installing addtional Python 3 packages'
pip3 install stegoveritas xsrfprobe

echo 'Installing Visual Studio Code'
wget 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64' -O /tmp/code_latest_amd64.deb
dpkg -i /tmp/code_latest_amd64.deb

echo 'Installing Rustscan'
wget 'https://github.com/RustScan/RustScan/releases/download/2.0.1/rustscan_2.0.1_amd64.deb' -O /tmp/rustscan_2.0.1_amd64.deb
dpkg -i /tmp/rustscan_2.0.1_amd64.deb

echo 'Downloading big dirbuster wordlist'
wget https://raw.githubusercontent.com/daviddias/node-dirbuster/master/lists/directory-list-2.3-big.txt -O /usr/share/wordlists/dirbuster/directory-list-2.3-big.txt

echo 'Extracting rockyou wordlist'
gunzip /usr/share/wordlists/rockyou.txt.gz

echo 'Enabling postgresql to run at startup'
systemctl enable postgresql

echo 'Updating .zshrc profile'
echo 'export MSFLOGO=/usr/share/metasploit-framework/data/logos/haKCers.txt' >> ~/.zshrc
echo 'export DAGENT="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36"' >> ~/.zshrc
echo 'export MAGENT="Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1' >> ~/.zshrc
echo 'export CAGENT="Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)"' >> ~/.zshrc
