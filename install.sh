#!/bin/bash

apt install python3.12-venv python3 python3-pip -y
python3 -m venv path/to/venv
path/to/venv/bin/pip install -r requirements.txt

wget -q https://go.dev/dl/go1.22.3.linux-amd64.tar.gz > /dev/null 2>&1
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz > /dev/null 2>&1
rm go1.22.3.linux-amd64.tar.gz

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin
export GO_DIR=$HOME/go/bin

echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
echo 'export PATH=$PATH:$HOME/go/bin' >> ~/.bashrc
echo 'export GO_DIR=$HOME/go/bin' >> ~/.bashrc
source ~/.bashrc

go install github.com/projectdiscovery/notify/cmd/notify@latest > /dev/null 2>&1
