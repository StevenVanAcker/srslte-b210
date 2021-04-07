#!/bin/sh -e

echo "Installing from packages"

export DEBIAN_FRONTEND=noninteractive
apt-get update && apt-get install -y software-properties-common vim nmap tcpdump iputils-ping iproute2 netcat


# Following https://docs.srslte.com/en/latest/general/source/1_installation.html
add-apt-repository ppa:srslte/releases
apt-get update
apt-get install --no-install-recommends -y uhd-host srslte
uhd_images_downloader
ldconfig

