#!/bin/bash

set -x

# Example of error prevention via checking args passed

if [[ $# -ne 3 ]]; then
	echo "Incorrect usage!"
	echo "Usage $0 <directory_name> <file_name> <file_content>"
	exit 1
fi

directory_name=$1
file_name=$2
file_content=$3

absolute_file_path=${directory_name}/${file_name}

if [[ ! -d  ${directory_name} ]]; then
	mkdir ${directory_name} || { echo "Cannot create directory!"; exit 1; }
fi

if [[ ! -f ${file_name} ]]; then
	touch ${absolute_file_path} || { echo "Cannot create file, exiting!"; exit 1 ; }
fi

echo ${file_content} > ${absolute_file_path}