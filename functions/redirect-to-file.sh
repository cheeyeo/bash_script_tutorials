#!/bin/bash

source "./bash-function-library.sh"

set_cwd

read -p "TYpe anything you like: " user_input

echo ${user_input} >> redirect-to-file.txt