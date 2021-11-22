#!/bin/bash

# Run command that should always return successful

mktemp
mktemp_rc=$?

# run command that would fail
mkdir /home/
mkdir_rc=$?

echo "mktemp returned ${mktemp_rc}, mkdir returned ${mkdir_rc}"