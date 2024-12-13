#!/bin/bash

# Utilities\cmlibarchive\CMakeLists.txt mod OPTION(ENABLE_OPENSSL "Enable use of OpenSSL" ON) -> OPTION(ENABLE_OPENSSL "Enable use of OpenSSL" OFF)
# Utilities\cmcurl\CMakeLists.txt add set(CMAKE_USE_OPENSSL OFF) 
# bootstrap mod cmake_options="-DCMAKE_BOOTSTRAP=1" -> cmake_options="-DCMAKE_BOOTSTRAP=1 -DCMAKE_USE_OPENSSL=OFF"

./bootstrap --prefix=/mnt/router-data/entware/bin

make install