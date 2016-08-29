#!/bin/bash
find . -maxdepth 1 -type d -print0 | xargs -0 -I {} sh -c 'echo -e $(find "{}" -printf "\n" | wc -l) "{}"' | sort -n
