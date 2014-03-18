#!/bin/bash

if [ "$(id -u)" != 0 ]; then
    echo "This script must be run as root" 1>&2
    exit 1
fi

export DEBIAN_FRONTEND=noninteractive

apt-get -q -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" update
apt-get -q -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" upgrade
apt-get -q -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade
