# Example of function variable scope
#!/bin/bash

if [[ $# -eq 0 ]]; then
	echo "Missing argument"!
	echo "Usage $0 <input>"
	exit 1
fi

input_variable=$1
CONSTANT_VARIABLE="constant"

hello_variable() {
	# constant only in this function scope
	local CONSTANT_VARIABLE="Another constant"
	echo "Input var: ${input_variable}"
	echo "Constant: ${CONSTANT_VARIABLE}"
}

hello_variable

echo "Function constant outside: ${CONSTANT_VARIABLE}"