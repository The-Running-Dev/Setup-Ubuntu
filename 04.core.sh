#!/bin/bash -e

# Source: https://docs.microsoft.com/en-us/dotnet/core/install/linux
echo "Downloading the Microsoft Repository GPG Keys..."
wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb

# Register the Microsoft repository GPG keys
sudo dpkg -i packages-microsoft-prod.deb

# Update the list of products
echo "Updating Repositories..."
sudo apt-get update

# Enable the "universe" repositories
echo "Adding the Universe Repository..."
sudo add-apt-repository universe

echo "Installing PowerShell and .NET Core..."
sudo apt-get install \
    powershell \
    dotnet-sdk-3.1 \
    dotnet-runtime-3.1 \
    aspnetcore-runtime-3.1 \
    dotnet-sdk-5.0 \
    dotnet-runtime-5.0 \
    aspnetcore-runtime-5.0 \
    -y

echo "Installing Azure CLI..."
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

# Clean up
rm -f /home/$USER/packages-microsoft-prod.deb
