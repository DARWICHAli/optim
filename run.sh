#!/bin/bash

suffix=".ez"
foo=${1%"$suffix"}
echo $foo
# compile et exec
if [ $# = 0 ] || [[ $1 != *".ez" ]]; then
    echo "Usage: ./run <file.ez> "
else
    make easeaclean
    easena $1
    make
    ./$foo
    mv *.log logs/
fi
exit 0
