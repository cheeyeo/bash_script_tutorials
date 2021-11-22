#!/bin/bash

set -x

FILE_NAME=/tmp/grep-then-else.txt

touch ${FILE_NAME}

grep -q 'keyword' ${FILE_NAME}
grep_rc=$?

if [[ ${grep_rc} -eq 0 ]]; then
	rm ${FILE_NAME}
else
	echo 'keyword' >> ${FILE_NAME}
fi



