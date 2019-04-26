#/bin/bash

cd ~
cd /usr/local/bin
./northern-cli stop
rm -rf northernd northern-cli northern-tx
wget https://github.com/KingricharVD/Northern/archive/2.4.0.tar.gz
tar -xzf 2.4.0.tar.gz
rm -rf 2.4.0.tar.gz
./northernd -daemon
sleep 30
./northern-cli getinfo
