#!/bin/bash -e

echo "Installing NodeJS..."
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

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
    yow