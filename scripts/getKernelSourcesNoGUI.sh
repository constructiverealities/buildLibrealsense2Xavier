#!/bin/bash
apt-add-repository universe
apt-get update
apt-get install pkg-config -y
cd /usr/src
#wget -N https://developer.nvidia.com/embedded/dlc/l4t-sources-31-2-0
wget -N https://developer.nvidia.com/embedded/dlc/l4t-sources-32-1-jetson-nano
# l4t-sources-31-1-0 is a tbz2 file
tar -xvf l4t-sources-32-1-jetson-nano public_sources/kernel_src.tbz2
tar -xvf public_sources/kernel_src.tbz2
# Space is tight; get rid of the compressed kernel source
rm -r public_sources
cd kernel/kernel-4.9
# Go get the default config file; this becomes the new system configuration
zcat /proc/config.gz > .config

