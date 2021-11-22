#!/bin/bash


# Usage: source bash-function-library.sh

# Check correct number of args applied
check_arguments() {
	if [[ $# -lt 1 ]]; then
		echo "Less than 1 arg received."
		exit 1
	fi

	expected_arguments=$1
	shift 1 # remove first argument

	if [[ $expected_arguments -ne $# ]]; then
		echo "Expected arguments don't match"
		return 1 # return exit status 1; does not stop script execution
	fi
}

set_cwd() {
	cd $(dirname $0)
}