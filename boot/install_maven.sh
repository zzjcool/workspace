#!/bin/sh
# install go protoc
mkdir ~/tmp
cd ~/tmp

MAVEN_VERSION="3.8.5"
MAVEN="apache-maven-${MAVEN_VERSION}"
wget --no-check-certificate https://dlcdn.apache.org/maven/maven-3/${MAVEN_VERSION}/binaries/${MAVEN}-bin.zip
unzip ${MAVEN}-bin.zip
cp -r ${MAVEN} /usr/share/

echo "export M2_HOME=/usr/share/${MAVEN}" >> ~/.rc
echo "export PATH=\$M2_HOME/bin:\$PATH" >> ~/.rc
mkdir ~/.m2

# clean
rm -rf ~/tmp