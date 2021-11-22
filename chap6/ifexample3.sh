#!/bin/bash

set -x

# Using if-then-else for testing

file_name=$1

if [[ -f ${file_name} ]]; then
  cat ${file_name}
else
	echo "File does not exist!"
	exit 1
fi

