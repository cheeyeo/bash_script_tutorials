### Bash Scripting exercises

Tutorials based on book "Learn Linux Shell Scripting"


### Notes


#### On functions and function library

* Functions shared across different scripts

  ( refer to bash-function-library.sh )

* Include the function lib into other scripts via `source <lib.sh>`

	sourcing script with only functions will not execute it

	if the script contains other actual commands such as echo, cat, it will be executed

	