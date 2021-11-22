#!/bin/bash

# Example of using functional checks

mkdir /tmp/temp_dir
mkdir_rc=$?

test -d /tmp/temp_dir
test_rc=$?

echo "mkdir resulted in ${mkdir_rc}, test resulted in ${test_rc}"