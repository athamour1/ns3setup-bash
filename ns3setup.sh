#!/bin/bash
# ns3 script

sudo apt update
sudo apt install gcc g++ python python3 python3-dev python3-setuptools git mercurial qt5-default python-pygraphviz python-kiwi ipython gir1.2-goocanvas-2.0 python-gi python-gi-cairo python-pygraphviz python3-gi python3-gi-cairo python3-pygraphviz gir1.2-gtk-3.0 ipython ipython3 openmpi-bin openmpi-common openmpi-doc libopenmpi-dev autoconf cvs bzr unrar gdb valgrind uncrustify doxygen graphviz imagemagick texlive texlive-extra-utils texlive-latex-extra texlive-font-utils texlive-lang-portuguese dvipng latexmk python3-sphinx dia gsl-bin libgsl-dev libgsl23 libgslcblas0 tcpdump sqlite sqlite3 libsqlite3-dev libxml2 libxml2-dev cmake libc6-dev libc6-dev-i386 libclang-6.0-dev llvm-6.0-dev automake python3-pip libgtk2.0-0 libgtk2.0-dev vtun lxc uml-utilities libboost-signals-dev libboost-filesystem-dev -y
cd ..
wget http://www.nsnam.org/release/ns-allinone-3.30.tar.bz2
tar xjf ns-allinone-3.30.tar.bz2
cd ns-allinone-3.30
./download.py -n ns-3.30
./build.py
cd ..
sudo rm -Rf ns-allinone-3.30.tar.bz2
sudo rm -Rf ns3setup-bash
