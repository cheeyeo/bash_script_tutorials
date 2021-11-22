#!/bin/bash

set -x

DIRECTORY=/tmp/

test -d ${DIRECTORY}
test_rc=$?

# using shorthand
[ -d ${DIRECTORY} ]
simple_rc=$?

[[ -d ${DIRECTORY} ]]
extended_rc=$?

echo "Return codes are: ${test_rc}, ${simple_rc}, ${extended_rc}"