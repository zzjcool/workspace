#!/bin/sh
# install go protoc
mkdir ~/tmp
cd ~/tmp
JAVA="zulu8.62.0.19-ca-jdk8.0.332-linux_x64"
wget https://cdn.azul.com/zulu/bin/${JAVA}.zip
unzip ${JAVA}.zip
cp -r ${JAVA} /usr/share/

echo "export JAVA_HOME=/usr/share/${JAVA}" >> ~/.rc
echo "export PATH=\$JAVA_HOME/bin:\$PATH" >> ~/.rc

# clean
rm -rf ~/tmp