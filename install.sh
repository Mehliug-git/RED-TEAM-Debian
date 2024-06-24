sudo apt update -y && sudo apt full-upgrade -y && sudo apt autoremove -y
sudo apt install python3 python3-pip perl git wget curl gnupg2 autoconf automake libtool shtool openssl pkg-config docker.io denian-goodies -y
sudo apt install default-jdk -y 
sudo apt install openjdk-17-jdk -y
sudo apt install nmap -y

#Aircrack
sudo apt-get install build-essential autoconf automake libtool pkg-config libnl-3-dev libnl-genl-3-dev libssl-dev ethtool shtool rfkill zlib1g-dev libpcap-dev libsqlite3-dev libpcre2-dev libhwloc-dev libcmocka-dev hostapd wpasupplicant tcpdump screen iw usbutils expect -y
wget https://download.aircrack-ng.org/aircrack-ng-1.7.tar.gz
tar -zxvf aircrack-ng-1.7.tar.gz
cd aircrack-ng-1.7
sudo autoreconf -i
sudo ./configure --with-experimental
sudo make
sudo make install
sudo ldconfig



echo 'deb http://download.opensuse.org/repositories/shells:/fish:/release:/3/Debian_12/ /' | sudo tee /etc/apt/sources.list.d/shells:fish:release:3.list
curl -fsSL https://download.opensuse.org/repositories/shells:fish:release:3/Debian_12/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/shells_fish_release_3.gpg > /dev/null
sudo apt update -y
sudo apt install fish -y
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
omf install bobthefish

sudo apt install build-essential zlib1g zlib1g-dev libpq-dev libpcap-dev libsqlite3-dev ruby ruby-dev
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall
chmod +x msfinstall
sudo ./msfinstall

sudo apt-get -y install john hashcat hydra


