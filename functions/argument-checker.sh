#!/bin/bash

source ./bash-function-library.sh

check_arguments 2 "$@" || \
{ echo "Incorrect usage! Usage: $0 <arg1> <arg2>"; exit 1; }
echo "Your arguments are: $1, $2"