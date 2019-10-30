#!/bin/bash -e

echo "Updating Repositories..."
sudo apt-get update -y > /dev/null 2>&1

echo "Upgrading All Packages..."
sudo DEBIAN_FRONTEND=noninteractive apt-get upgrade -y > /dev/null 2>&1

echo "Installing New Packages..."
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    fortune \
    software-properties-common \
    zsh -y > /dev/null 2>&1

echo "Running Cleanup..."
sudo apt autoremove -y > /dev/null 2>&1