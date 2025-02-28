#!/bin/bash
set -e
mkdir -p reverse-words-package/DEBIAN
cp -r DEBIAN/* reverse-words-package/DEBIAN/

mkdir -p reverse-words-package/usr/bin
cp usr/bin/reverse-words reverse-words-package/usr/bin/

dpkg-deb --build reverse-words-package
mv reverse-words-package.deb ../reverse-words-package.deb
