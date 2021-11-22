#!/bin/bash

reverser() {
	if [[ $# -ne 1 ]]; then
		echo "Need one argument" && exit 1
	fi

	rev <<< ${1}
}

if [[ $# -ne 1 ]]; then
	echo "Incorrect usage"
	echo "Usage: $0 <input>"
	exit 1
fi

user_input="_${1}_"

reversed_input=$(reverser ${user_input})
echo "Reversed input: ${reversed_input}"