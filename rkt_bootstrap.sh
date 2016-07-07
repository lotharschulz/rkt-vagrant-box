#!/usr/bin/env bash

apt-get update
#sudo apt-get install unattended-upgrades
#sudo apt-get install language-pack-en
#apt-get upgrade -y # enable this one if you want all packages up to date

wget https://github.com/coreos/rkt/releases/download/v1.9.1/rkt-v1.9.1.tar.gz
tar xzvf rkt-v1.9.1.tar.gz
cd rkt-v1.9.1
