#!/bin/bash -e

# Ask for the user password & cache it
sudo true

repositoryUrl='https://github.com/The-Running-Dev/Setup-Ubuntu.git'
gitHubCertificate='/tmp/github-com.pem'
cloneDir='/tmp/Setup-Ubuntu/'

# Download and install the GitHub certificate locally
openssl s_client -showcerts -servername github.com -connect github.com:443 </dev/null 2>/dev/null | sed -n -e '/BEGIN\ CERTIFICATE/,/END\ CERTIFICATE/ p' > $gitHubCertificate
cat $gitHubCertificate | sudo tee -a /etc/ssl/certs/ca-certificates.crt > /dev/null 2>&1

git clone $repositoryUrl $cloneDir

if [ -d $cloneDir ]; then
    sudo chmod +x $cloneDir/*.sh

    $cloneDir/install.sh
fi