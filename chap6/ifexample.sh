#!/bin/bash

set -x

# Example of testing if file exists and read it; if not exit with error

FILE=/tmp/random_file.txt

if [[ ! -f ${FILE} ]]; then
	echo "File does not exist"
	exit 1
fi

cat ${FILE}