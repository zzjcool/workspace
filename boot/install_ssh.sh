#!/bin/sh
# install zsh
mkdir /run/sshd
cp -rf ~/boot/sshd_config /etc/ssh/sshd_config
chmod 600 /etc/ssh/sshd_config
passwd << EOF
root
root
EOF