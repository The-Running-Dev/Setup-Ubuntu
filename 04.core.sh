#!/bin/bash -e

# Source: https://dotnet.microsoft.com/learn/dotnet/hello-world-tutorial/install
echo "Downloading the Microsoft Repository GPG Keys..."
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb > /dev/null 2>&1
sudo dpkg -i packages-microsoft-prod.deb > /dev/null 2>&1

echo "Updating Repositories..."
sudo apt-get update > /dev/null 2>&1

echo "Adding the Universe Repository..."
sudo add-apt-repository universe > /dev/null 2>&1

echo "Installing PowerShell and .NET Core..."
sudo apt-get install \
    powershell-preview \
    dotnet-sdk-3.1 \
    -y > /dev/null 2>&1

# Clean up
rm -f /home/$USER/packages-microsoft-prod.deb