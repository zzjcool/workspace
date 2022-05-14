#!/bin/sh
# install go protoc
mkdir ~/tmp
cd ~/tmp
JAVA="zulu11.56.19-ca-jdk11.0.15-linux_x64"
wget https://cdn.azul.com/zulu/bin/${JAVA}.zip
unzip ${JAVA}.zip
cp -r ${JAVA} /usr/share/

echo "export JAVA_HOME11=/usr/share/${JAVA}" >> ~/.rc

# clean
rm -rf ~/tmp