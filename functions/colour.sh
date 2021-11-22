# Example of function with parameters
#!/bin/bash

print_colour() {
	if [[ $# -ne 2 ]]; then
		echo "Usage print_colour <string> <colour>"
		exit 1
	fi

	local string=$1
	local colour=$2

	case ${colour} in
	red)
    local colour_code="\e[31m";;
  blue)
    local colour_code="\e[34m";;
  green)
    local colour_code="\e[32m";;
  *)
    local colour_code="\e[39m";;
  esac

  echo -e ${colour_code}${string}"\e[39m"
}

print_colour "Hello world" "red"
print_colour "Hello world" "green"
print_colour "Hello world" "blue"
print_colour "Hello world" "magenta"