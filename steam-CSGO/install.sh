#!/bin/bash
apt -y update
apt -y --no-install-recommends install curl lib32gcc1 ca-certificates

cd /tmp
curl -sSL -o steamcmd.tar.gz http://media.steampowered.com/installer/steamcmd_linux.tar.gz

mkdir -p /opt/steamcmd
tar -xzvf steamcmd.tar.gz -C /opt/steamcmd
cd /opt/steamcmd

chown -R root:root /opt

export HOME=/opt/steamcmd
./steamcmd.sh +login anonymous +force_install_dir /opt/steamcmd +app_update 740 +quit