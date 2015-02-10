#!/usr/bin/env bash

apt-get update
sudo apt-get install unattended-upgrades 
sudo apt-get install language-pack-en
#apt-get upgrade -y # enable this one if you want all packages up to date

wget https://github.com/coreos/rocket/releases/download/v0.3.1/rocket-v0.3.1.tar.gz
tar xzvf rocket-v0.3.1.tar.gz
cd rocket-v0.3.1
