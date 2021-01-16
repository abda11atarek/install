#remove old version of go-lang 
sudo rm -rf /usr/local/go; 
sudo rm -rf /root/go; 
echo "Installing Golang"
wget -c https://golang.org/dl/go1.15.2.linux-amd64.tar.gz
shasum -a 256 go1.15.2.linux-amd64.tar.gz;
tar -C /usr/local -xvzf go1.15.2.linux-amd64.tar.gz
mkdir -p ~/go/{bin,src,pkg}
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bash_profile;
echo 'export GOPATH="/root/go"' >> ~/.bash_profile;
echo 'export GOBIN=$GOPATH/bin' >> ~/.bash_profile;
echo 'export GOROOT=/usr/local/go' >> ~/.bash_profile;
echo 'export PATH=$PATH:$GOROOT/bin' >> ~/.bash_profile;
source ~/.bash_profile
cp /usr/local/go/bin/go /usr/local/bin/; 

#sudo apt install golang-go
sudo apt-get -y update
sudo apt-get -y upgrade


sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y jq
sudo apt-get install -y ruby-full
sudo apt-get install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
sudo apt-get install -y build-essential libssl-dev libffi-dev python-dev
sudo apt-get install -y python-setuptools
sudo apt-get install -y libldns-dev
sudo apt-get install -y python3-pip
sudo apt-get install -y python-pip
sudo apt-get install -y python-dnspython
sudo apt-get install -y git
sudo apt-get install -y rename
sudo apt-get install -y xargs

sudo add-apt-repository universe;
sudo apt install -y python2;
sudo apt install -y python;
curl https://bootstrap.pypa.io/get-pip.py --output get-pip.py; 
sudo python2 get-pip.py; 

pip install requests; 
pip3 install requests;
pip install subprocess; 
pip install termcolor; 
pip3 install termcolor; 
pip3 install subprocess; 

mkdir ~/tools
cd ~/tools/

#install Sublist3r 
git clone https://github.com/aboul3la/Sublist3r.git;
cd Sublist3r;
sudo pip install -r requirements.txt;
cd ..;

#install subfinder 
git clone https://github.com/projectdiscovery/subfinder.git; 
cd subfinder/v2/cmd/subfinder;
go build; 
cp subfinder /usr/local/bin/; 
cd ../../../../ ;

#install assetfinder 
go get -u github.com/tomnomnom/assetfinder; 
cp /root/go/bin/assetfinder /usr/local/bin/; 

#install SubOver
go get github.com/Ice3man543/SubOver;
cp /root/go/bin/SubOver /usr/local/bin/; 

#install httpx 
git clone https://github.com/projectdiscovery/httpx.git; 
cd httpx/cmd/httpx; 
go build; 
cp httpx /usr/local/bin/;
cd ../../../ ;

#install aquatone
echo "Installing Aquatone"
go get github.com/michenriksen/aquatone
echo "done"

#install chromium
echo "Installing Chromium"
sudo snap install chromium
echo "done"

#install dirsearch
echo "installing dirsearch"
git clone https://github.com/maurosoria/dirsearch.git
cd ~/tools/
echo "done"

#install Tar3con
echo "installing Tar3con"
git clone https://github.com/abda11atarek/Tar3con.git
cd ~/tools/

#install nmap
echo "installing nmap"
sudo apt-get install -y nmap
echo "done"


#install massdns
echo "installing massdns"
git clone https://github.com/blechschmidt/massdns.git
cd ~/tools/massdns
make
cd ~/tools/
echo "done"
echo "done"

#install crtndstry
echo "installing crtndstry"
git clone https://github.com/nahamsec/crtndstry.git
echo "done"
