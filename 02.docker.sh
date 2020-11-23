#!/bin/bash -e

# Install kernel extra's to enable docker aufs support
# sudo apt-get -y install linux-image-extra-$(uname -r)

# Use the official docker install script
echo "Installing Docker..."

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - > /dev/null 2>&1

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable" > /dev/null 2>&1

sudo apt-get update > /dev/null 2>&1

sudo apt-get install docker-ce docker-ce-cli containerd.io -y > /dev/null 2>&1

# Add the user to the Docker group
sudo usermod -aG docker $(whoami)

echo "Installing Docker-Compose..."
sudo curl -L https://github.com/docker/compose/releases/download/latest/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose > /dev/null 2>&1
sudo chmod +x /usr/local/bin/docker-compose
sudo sh -c "curl -L https://raw.githubusercontent.com/docker/compose/${COMPOSE_VERSION}/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose" > /dev/null 2>&1

echo "Installing Docker-Cleanup..."
git clone https://gist.github.com/76b450a0c986e576e98b.git /tmp/76b450a0c986e576e98b > /dev/null 2>&1
sudo mv /tmp/76b450a0c986e576e98b/docker-cleanup /usr/local/bin/docker-cleanup
sudo chmod +x /usr/local/bin/docker-cleanup
rm -rf /tmp/76b450a0c986e576e98b
