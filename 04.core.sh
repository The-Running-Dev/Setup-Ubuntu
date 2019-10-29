# Add Microsoft repositories
# Source: https://dotnet.microsoft.com/learn/dotnet/hello-world-tutorial/install
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

sudo add-apt-repository universe

# Update repositores
sudo apt-get update -y

# Install PowerShell Preview and .NET SDK
sudo apt-get install powershell-preview dotnet-sdk-3.0 -y