#!/bin/bash

# compile et exec
if [ $# = 0 ] || [[ $1 != *".ez" ]]; then
    echo "Usage: ./run <file.ez> "
else
    easena $1 && make && ./sinusit
    mv *.log logs/
fi
exit 0
