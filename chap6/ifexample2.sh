#!/bin/bash

# Another if example but using return codes in checks

set -x

mkdir /temp_dir

if [[ $? -ne 0 ]]; then
	echo "mkdir was not successful!"
	exit 1
fi

touch /temp_dir/tempfile.txt