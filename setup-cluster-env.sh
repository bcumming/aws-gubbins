#!/bin/bash

# install dependencies
sudo yum -y install libmount-devel bubblewrap squashfs-tools

# install squashfs-mount
cd $HOME/software/
git clone git@github.com:eth-cscs/squashfs-mount.git
cd squashfs-mount/
sudo make install-suid
cd $HOME/software/
git clone git@github.com:eth-cscs/squashfs-run.git
cd squashfs-run/
sudo make install

# create paths
sudo mkdir /user-environment
