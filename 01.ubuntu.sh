#!/bin/bash -e

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
unattendedUpgradesConfig="$dir/50unattended-upgrades"

echo "Updating Repositories..."
sudo apt-get update -y

echo "Upgrading All Packages..."
sudo DEBIAN_FRONTEND=noninteractive apt-get upgrade -y

echo "Installing New Packages..."
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    fortune-mod \
    software-properties-common \
    nfs-common \
    unattended-upgrades \
    update-notifier-common \
    zsh -y

echo "Running Cleanup..."
sudo apt autoremove -y

echo "Copying Unattended Upgrades Config..."
cp -f $unattendedUpgradesConfig /etc/apt/apt.conf.d/50unattended-upgrades