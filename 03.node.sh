#!/bin/bash -e

echo "Installing NodeJS..."
curl -sL https://deb.nodesource.com/setup_15.x | sudo -E bash - > /dev/null 2>&1
sudo apt-get install -y nodejs > /dev/null 2>&1

echo "Installing NodeJS Packages..."
sudo npm install --silent --unsafe-perm -g @angular/cli \
    angular-cli-ghpages \
    concurrently \
    electron \
    gulp \
    mocha \
    multer \
    nodemon \
    ts-node \
    typescript \
    serverless \
    webpack \
    yow > /dev/null 2>&1