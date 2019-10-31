#!/bin/bash -e

# Get the script directory
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

gitHubCertificate="$dir/github-com.pem"
gitHubGistCertificate="$dir/gist.github-com.pem"
gitHubUserContentCertificate="$dir/gist.githubusercontent-com.pem"

cat $gitHubCertificate | sudo tee -a /etc/ssl/certs/ca-certificates.crt > /dev/null 2>&1

cat $gitHubGistCertificate | sudo tee -a /etc/ssl/certs/ca-certificates.crt > /dev/null 2>&1

cat $gitHubUserContentCertificate | sudo tee -a /etc/ssl/certs/ca-certificates.crt > /dev/null 2>&1