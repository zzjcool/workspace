#!/bin/sh
# install go protoc
mkdir ~/tmp
cd ~/tmp
GO_VERSION="1.17.5"
PROTOC_VERSION="3.19.1"
wget https://go.dev/dl/go${GO_VERSION}.linux-amd64.tar.gz
tar -C /usr/local -xzf go${GO_VERSION}.linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.rc
wget https://github.com/protocolbuffers/protobuf/releases/download/v${PROTOC_VERSION}/protoc-${PROTOC_VERSION}-linux-x86_64.zip
unzip protoc-${PROTOC_VERSION}-linux-x86_64.zip
mv bin/protoc /usr/local/bin/
mv include/google /usr/local/include/
# clean
rm -rf ~/tmp