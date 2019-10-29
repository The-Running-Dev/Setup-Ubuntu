# /mnt/c/Users/boyank/Downloads/Ubuntu/install.sh

# Get the script directory
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Ask for the user password & caches the password
sudo true

export DEBIAN_FRONTEND=noninteractive

for entry in "$dir"/*.sh
do
  if [[ "$entry" =~ .*/[[:digit:]]+ ]]; then
    source "$entry"
  fi
done