# Get the script directory
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

gitHubCertificate="$dir/github-com.pem"
gitHubGistCertificate="$dir/gist.github-com.pem"
gitHubUserContentCertificate="$dir/gist.githubusercontent-com.pem"

#openssl s_client -showcerts -servername github.com -connect github.com:443 </dev/null 2>/dev/null | sed -n -e '/BEGIN\ CERTIFICATE/,/END\ CERTIFICATE/ p'  > github-com.pem
cat $gitHubCertificate | sudo tee -a /etc/ssl/certs/ca-certificates.crt > /dev/null 2>&1

#openssl s_client -showcerts -servername gist.githubusercontent.com -connect gist.githubusercontent.com:443 </dev/null 2>/dev/null | sed -n -e '/BEGIN\ CERTIFICATE/,/END\ CERTIFICATE/ p'  > gist.githubusercontent-com.pem
cat $gitHubGistCertificate | sudo tee -a /etc/ssl/certs/ca-certificates.crt > /dev/null 2>&1

cat $gitHubUserContentCertificate | sudo tee -a /etc/ssl/certs/ca-certificates.crt > /dev/null 2>&1