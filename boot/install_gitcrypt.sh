#!/bin/sh
# install git-crypt
mkdir ~/tmp
cd ~/tmp

git clone https://github.com/AGWA/git-crypt.git
cd git-crypt
make
make install

# clean
rm -rf ~/tmp