#!/bin/bash

suffix=".ez"
foo=${1%"$suffix"}
# compile et exec

if [[ $1 == *"pdf" ]]; then
    asciidoctor-pdf *.adoc
    evince rapport.pdf
    exit 0
fi

if [ $# = 0 ] || [[ $1 != *".ez" ]]; then
    echo "Usage: ./run <file.ez> "
else
    echo "executing :" $1
    make easeaclean
    easena $1
    make
    ./$foo
    echo "Done !"
    make easeaclean
    mv *.log logs/
fi
exit 0
