#!/bin/bash -e

# Download and install the GitHub certificates
openssl s_client -showcerts -servername github.com \
    -connect github.com:443 </dev/null 2>/dev/null | \
    sed -n -e '/BEGIN\ CERTIFICATE/,/END\ CERTIFICATE/ p' \
    | \
    sudo tee -a /etc/ssl/certs/ca-certificates.crt

openssl s_client -showcerts -servername gist.github.com \
    -connect gist.github.com:443 </dev/null 2>/dev/null | \
    sed -n -e '/BEGIN\ CERTIFICATE/,/END\ CERTIFICATE/ p' \
    | \
    sudo tee -a /etc/ssl/certs/ca-certificates.crt

openssl s_client -showcerts -servername gist.githubusercontent.com \
    -connect gist.githubusercontent.com:443 </dev/null 2>/dev/null | \
    sed -n -e '/BEGIN\ CERTIFICATE/,/END\ CERTIFICATE/ p' \
    | \
    sudo tee -a /etc/ssl/certs/ca-certificates.crt