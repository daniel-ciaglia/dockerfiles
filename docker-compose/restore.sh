#!/bin/bash
set -e
ARCHIVE='/Users/daniel/Documents/safety'
find my_data -type f | while read FILE;
do
    PLAIN=$(basename ${FILE})
    if [ -f "${ARCHIVE}/${PLAIN}" ]; then
        echo -n "-> restoring ${FILE}..."
        mv ${ARCHIVE}/${PLAIN} ${FILE} && echo "...done"
    fi
done;