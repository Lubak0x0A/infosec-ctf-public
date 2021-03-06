# Host Preparation
# Remove anything not applicable and run with sudo
# sudo bash hostprep-lubak0x0a.sh
echo 'Updating Repositories and Upgrading Kali'
apt update && apt upgrade -y && apt autoremove && apt autoclean

echo 'Installing addtional packages from repositories'
apt install gobuster remmina terminator python3-pip exiftool steghide audacity oscanner seclists sipvicious smtp-user-enum tnscmd10g wkhtmltopdf python3-venv code-oss ghidra -y

echo 'Installing addtional Python 3 packages'
pip3 install stegoveritas xsrfprobe

echo 'Resolving stegoveritas dependencies'
stegoveritas_install_deps

echo 'Installing Ruby packages'
gem install zsteg

# echo 'Installing Visual Studio Code'
# wget 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64' -O /tmp/code_latest_amd64.deb
# dpkg -i /tmp/code_latest_amd64.deb

echo 'Installing Rustscan'
wget 'https://github.com/RustScan/RustScan/releases/download/2.0.1/rustscan_2.0.1_amd64.deb' -O /tmp/rustscan_2.0.1_amd64.deb
dpkg -i /tmp/rustscan_2.0.1_amd64.deb

echo 'Downloading big dirbuster wordlist'
wget https://raw.githubusercontent.com/daviddias/node-dirbuster/master/lists/directory-list-2.3-big.txt -O /usr/share/wordlists/dirbuster/directory-list-2.3-big.txt

echo 'Extracting rockyou wordlist'
gunzip /usr/share/wordlists/rockyou.txt.gz

echo 'Preparring logging directories'
mkdir /var/log/sessions
chmod 3777 /var/log/sessions/
mkdir /var/log/pcaps
chmod 3777 /var/log/pcaps
mkdir /opt/lubak0x0a-scripts
chmod 755 /opt/lubak0x0a-scripts

echo 'Installing Autorecon'
git clone https://github.com/Tib3rius/AutoRecon.git /tmp/AutoRecon
pip install -r /tmp/AutoRecon/requirements.txt 
cp -r /tmp/AutoRecon/src/autorecon /opt/autorecon
chmod -R 755 /opt/autorecon

cp openvpn-down.sh /opt/lubak0x0a-scripts/openvpn-down.sh
chmod +x /opt/lubak0x0a-scripts/openvpn-down.sh
cp openvpn-up.sh /opt/lubak0x0a-scripts/openvpn-up.sh
chmod +x /opt/lubak0x0a-scripts/openvpn-up.sh
cp openvpn-recover.sh /opt/lubak0x0a-scripts/openvpn-recover.sh
chmod +x /opt/lubak0x0a-scripts/openvpn-recover.sh
