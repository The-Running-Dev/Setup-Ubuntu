#!/bin/bash -e

# Get the script directory
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

today="$(date "+%Y.%m.%d")"
log=$dir/install.$today.log

exec > >(tee -a ${log} )
exec 2> >(tee -a ${log} >&2)

# Ask for the user password & cache it
sudo true

for entry in "$dir"/*.sh
do
  if [[ "$entry" =~ .*/[[:digit:]]+ ]]; then
    echo "
=======================================================
$entry...
======================================================="
    . "$entry"
  fi
done