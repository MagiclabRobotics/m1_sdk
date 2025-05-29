#!/bin/bash
# sudo apt install clang-format cmake-format 
# clang-format, version v15 is required
find ./ -regex '.*\.cc\|.*\.cpp\|.*\.h\|.*\.hpp\|.*\.proto' -and -not -regex '.*\.pb\.cc\|.*\.pb\.h' | xargs clang-format -i --style=file
echo "clang-format done"

# cmake-format, apt install cmake-format
{ find ./ -name "CMakeLists.txt"; } | xargs cmake-format -c ./.cmake-format.py -i
{ find ./ -name "*.cmake"; } | xargs cmake-format -c ./.cmake-format.py -i
echo "cmake-format done"