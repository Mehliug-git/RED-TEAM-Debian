sudo su
sudo apt install python3 python3-pip perl git wgel curl  gnupg2
sudo apt install default-jdk
sudo apt install openjdk-17-jdk
sudo apt install nmap

git clone https://github.com/aircrack-ng/aircrack-ng
cd aircrack-ng
autoreconf -i
./configure --with-experimental
make
make install
ldconfig

echo 'deb http://download.opensuse.org/repositories/shells:/fish:/release:/3/Debian_12/ /' | sudo tee /etc/apt/sources.list.d/shells:fish:release:3.list
curl -fsSL https://download.opensuse.org/repositories/shells:fish:release:3/Debian_12/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/shells_fish_release_3.gpg > /dev/null
sudo apt update
sudo apt install fish

sudo apt install build-essential zlib1g zlib1g-dev libpq-dev libpcap-dev libsqlite3-dev ruby ruby-dev
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall
chmod +x msfinstall
sudo ./msfinstall

sudo apt-get -y install john hashcat hydra


