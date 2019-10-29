# Update repositores
sudo apt-get update -y

# Upgrade all packages
sudo apt-get upgrade -y

# Install packages
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    fortune \
    software-properties-common \
    zsh -y -f

sudo apt autoremove -y