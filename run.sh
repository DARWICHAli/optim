#!/usr/bin/env bash

# compile et exec
easena $1 && make && ./sinusit
mv *.log logs/
