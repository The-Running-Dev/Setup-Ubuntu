#!/bin/bash -e

gitHubCertificate="/tmp/github-com.pem"

# Download and install the GitHub certificate locally
openssl s_client -showcerts -servername github.com -connect github.com:443 </dev/null 2>/dev/null | sed -n -e '/BEGIN\ CERTIFICATE/,/END\ CERTIFICATE/ p'  > $gitHubCertificate
cat $gitHubCertificate | sudo tee -a /etc/ssl/certs/ca-certificates.crt > /dev/null 2>&1

git clone https://github.com/The-Running-Dev/Setup-Ubuntu.git /tmp/Setup-Ubuntu/

if [ -d /tmp/Setup-Ubuntu/ ]; then
    sudo chmod +x /tmp/Setup-Ubuntu/*.sh
    /tmp/Setup-Ubuntu/install.sh
fi