echo 'Updating Repositories and Upgrading Kali'
apt update && apt upgrade -y && apt autoremove && apt autoclean

echo 'Installing addtional packages from repositories'
apt install gobuster remmina terminator python3-pip exiftool steghide audacity -y

echo 'Installing addtional Python 3 packages'
pip3 install stegoveritas xsrfprobe

echo 'Resolving stegoveritas dependencies'
stegoveritas_install_deps

echo 'Installing Ruby packages'
gem install zsteg

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
