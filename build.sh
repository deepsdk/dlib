#!/bin/bash
set -e

rm -rf build
mkdir build
cd build
cmake .. -DLIB_NO_GUI_SUPPORT=1 -DLIB_PNG_SUPPORT=0 -DLIB_JPEG_SUPPORT=0

echo "Edit ./build/CMakeCache.txt"
echo " DLIB_NO_GUI_SUPPORT:BOOL=ON"
echo " DLIB_PNG_SUPPORT:BOOL=OFF"
echo " DLIB_JPEG_SUPPORT:BOOL=OFF"
echo "Run cd build; cmake --build . --config Release"
