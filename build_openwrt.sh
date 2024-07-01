#!/bin/bash

# Utilities\cmlibarchive\CMakeLists.txt mod OPTION(ENABLE_OPENSSL "Enable use of OpenSSL" ON) -> OPTION(ENABLE_OPENSSL "Enable use of OpenSSL" OFF)
find . -name "*.cmake.in" -exec sed -i  "s/-lrt//g" '{}' \;
find . -name "*.cmake.in" -exec sed -i  "s/-ldl//g" '{}' \;
sed -i  "s/-ldl//g" bootstrap &&  sed -i  "s/-lrt//g" bootstrap
./bootstrap --prefix=/usr
make
find . -name "link.txt" -exec sed -i  "s/-ldl//g" '{}' \;
find . -name "link.txt" -exec sed -i  "s/-lrt//g" '{}' \;
find . -name Makefile2 -exec sed -i  "s/-ldl//g" '{}' \;
find . -name Makefile2 -exec sed -i  "s/-lrt//g" '{}' \;
make
make install