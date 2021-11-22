#!/bin/bash

set -x

# Example of checking if given file exists and if so, replace it with /dev/null empty file


file_name=$1

# if file exists overwrite with /dev/null
if [[ -f ${file_name} ]]; then
	cp /dev/null ${file_name}
else
	touch ${file_name}
fi

if [[ $? -ne 0 ]]; then
	echo "Something went wrong!"
	exit 1
else
	echo "Success, ${file_name} is now empty"
fi