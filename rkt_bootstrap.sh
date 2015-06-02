#!/usr/bin/env bash

apt-get update
sudo apt-get install unattended-upgrades 
sudo apt-get install language-pack-en
#apt-get upgrade -y # enable this one if you want all packages up to date

wget https://github.com/coreos/rkt/releases/download/v0.5.6/rkt-v0.5.6.tar.gz
tar xzvf rkt-v0.5.6.tar.gz
cd rkt-v0.5.6
