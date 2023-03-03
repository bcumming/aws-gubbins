#!/bin/bash

# install dependencies
sudo yum -y install libmount-devel bubblewrap squashfs-tools

# install squashfs-mount
software_path=$HOME/software/

cd $software_path
git clone https://github.com/eth-cscs/squashfs-mount.git
cd squashfs-mount/
sudo make install-suid

cd $software_path
git clone https://github.com/eth-cscs/squashfs-run.git
cd squashfs-run/
sudo make install

cd $HOME

# create paths
sudo mkdir /user-environment
