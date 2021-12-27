#!/bin/sh
# install zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)" << EOF
Y
EOF
chsh -s /bin/zsh root