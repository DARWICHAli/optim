#!/usr/bin/env bash

# compile et exec
easena sinusit.ez && make && ./sinusit
mv *.log logs/
