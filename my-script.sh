#!/bin/bash

# make sure this is run under arm64 on M1/M2/M3 machine, e.g. run `arch -arm64 zsh` first before executing

echo "DIR"
make dir

echo "BOOTSTRAP"
make bootstrap

echo "BUILD"
python3 multibuild.py --target macos --arch arm64
