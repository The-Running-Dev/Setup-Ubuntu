#!/bin/bash -e

# Install kernel extra's to enable docker aufs support
# sudo apt-get -y install linux-image-extra-$(uname -r)

# Add Docker PPA and install latest version
# sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
# sudo sh -c "echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
# sudo apt-get update
# sudo apt-get install lxc-docker -y

# Use the official docker install script
echo "Installing Docker..."
wget -qO- https://get.docker.com/ | sh > /dev/null 2>&1

# Add the user to the Docker group
sudo usermod -aG docker $(whoami)

echo "Installing Docker-Compose..."
COMPOSE_VERSION=`git ls-remote https://github.com/docker/compose | grep refs/tags | grep -oP "[0-9]+\.[0-9][0-9]+\.[0-9]+$" | tail -n 1`
sudo sh -c "curl -L https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose" > /dev/null 2>&1
sudo chmod +x /usr/local/bin/docker-compose
sudo sh -c "curl -L https://raw.githubusercontent.com/docker/compose/${COMPOSE_VERSION}/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose" > /dev/null 2>&1

echo "Installing Docker-Cleanup..."
git clone https://gist.github.com/76b450a0c986e576e98b.git /tmp/76b450a0c986e576e98b > /dev/null 2>&1
sudo mv /tmp/76b450a0c986e576e98b/docker-cleanup /usr/local/bin/docker-cleanup
sudo chmod +x /usr/local/bin/docker-cleanup
rm -rf /tmp/76b450a0c986e576e98b