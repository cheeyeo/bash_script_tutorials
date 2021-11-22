#!/bin/bash

handle_minor_error() {
	echo "A minor error has occured"
}

handle_fatal_error() {
	echo "Critical error occured"
	exit 1
}

# minor failures
ls -l /tmp/ || handle_minor_error
ls -l /root/ || handle_minor_error

# fatal errors
cat /etc/shadow || handle_fatal_error
cat /etc/passwd || handle_fatal_error