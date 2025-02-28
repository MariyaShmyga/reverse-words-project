#!/bin/bash
set -e
cd src
make
mkdir -p ../usr/bin
cp reverse-words ../usr/bin/
