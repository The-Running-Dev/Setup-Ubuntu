#!/bin/bash -e

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
    fortune \
    software-properties-common \
    nfs-common \
    zsh -y

echo "Running Cleanup..."
sudo apt autoremove -y