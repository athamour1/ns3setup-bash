#!/bin/bash
# ns3 script

sudo apt update && sudo apt upgrade -y
sudo apt install build-essential wget cmake mercurial qt5-default -y
wget https://www.nsnam.org/releases/ns-allinone-3.30.1.tar.bz2
tar -xf ns-allinone-3.30.1.tar.bz2
cd ns-allinone-3.30.1
python3 build.py
cd netanim-3.108
make clean
qmake NetAnim.pro
make