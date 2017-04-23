#!/usr/bin/env bash

#apt-get update
#sudo apt-get install unattended-upgrades
#sudo apt-get install language-pack-en
#sudo apt-get upgrade -y

RKT_STR="rkt-"
RKT_VERSION="v1.25.0"
RKT_PACKAGE=".tar.gz"
RKT_RELEASE_BASE_PATH="https://github.com/rkt/rkt/releases/download/"
UBUNTU_HOME="/home/ubuntu/"
BASHRC_FILE=".bashrc"

curl -L -O "$RKT_RELEASE_BASE_PATH$RKT_VERSION/$RKT_STR$RKT_VERSION$RKT_PACKAGE"
tar xzvf $RKT_STR$RKT_VERSION$RKT_PACKAGE
rm -f $RKT_STR$RKT_VERSION$RKT_PACKAGE

echo "PATH=$UBUNTU_HOME$RKT_STR$RKT_VERSION/:$PATH" >> $UBUNTU_HOME$BASHRC_FILE
