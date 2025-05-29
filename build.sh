#!/bin/bash
set -e

if [ -d ./build/install ]; then
    rm -rf ./build/install
fi

cmake -B build \
    -DCMAKE_BUILD_TYPE=Debug \
    -DCMAKE_INSTALL_PREFIX=/opt/magic_m1_sdk \
    -DBUILD_EXAMPLES=ON \
    $@

cmake --build build --parallel $(nproc)

cmake --install build
