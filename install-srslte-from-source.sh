#!/bin/sh -e

echo "Installing from source"

export DEBIAN_FRONTEND=noninteractive
apt-get update && apt-get install -y build-essential git mdm vim nmap tcpdump iputils-ping iproute2 netcat

# Following https://github.com/srsLTE/srsLTE
apt-get install --no-install-recommends -y cmake libfftw3-dev libmbedtls-dev libboost-program-options-dev libconfig++-dev libsctp-dev libuhd-dev uhd-host

#  https://docs.srsran.com/en/latest/usermanuals/source/srsue/source/4_ue_advanced.html#external-usim
apt-get install --no-install-recommends -y libpcsclite-dev pcscd pcsc-tools

mkdir -p /opt
cd /opt
git clone https://github.com/srsLTE/srsLTE
cd srsLTE
mkdir build
cd build
cmake ..
make -j$(ncpus)
make install
srsran_install_configs.sh user
uhd_images_downloader
ldconfig

