#export NG_CLI_ANALYTICS=ci

# Add the Node 13 repository and install Node
curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
sudo apt-get install -y nodejs

# Update NPM
# sudo npm update -g npm

# Install Node Packages
sudo npm install -g @angular/cli \
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
    yow > /dev/null