#!/bin/bash

echo sudo apt-get -y install openssl libssl-dev
echo sudo yum -y install openssl-devel

if [ -f /etc/redhat-release ]; then
  sudo yum -y install openssl-devel
fi

if [ -f /etc/lsb-release ]; then
  sudo apt-get -y install openssl libssl-dev
fi

./bootstrap

sudo make install

echo sudo rm -rf ${cmake_path}
echo make -j$(nproc)
echo cmake_path=$(which cmake)
echo sudo ln $(which cmake3) ${cmake_path}
