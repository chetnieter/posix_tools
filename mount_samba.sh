#!/bin/bash

# Get the host
if [ $# -gt 0 ]; then
    hostname=$1
else
    echo "Must specific the host machine for the network drives."
    exit
fi

# Read Password
echo -n Password: 
read -s password
echo

# Mount command
cmd="mount -t"

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    cmd="$cmd cifs" 
elif [[ "$OSTYPE" == "darwin"* ]]; then
    cmd="$cmd smbfs"
fi

# List of drives
drives=(
    exportcont
    fouo
    other
)
for d in "${drives[@]}"; do
    tmp_cmd="$cmd //chet.nieter:$password@$hostname/$d $HOME/network/$hostname/$d"
    echo "$tmp_cmd"
done
