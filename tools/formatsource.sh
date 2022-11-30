#!/bin/bash
# This file is to be run from a bash script under unix/linux/macOS
# for windows 10 and up, WSL needs to be installed

pushd ..
echo replace tab char with 4 spaces in every file from here
#echo excluding hidden files
find . -type f -not -path '*/\.*' -regex '.*\.\(php\|inc\|css\)$' \
    -exec echo {} + \
    -exec sed -i 's/\t/    /g' {} +

echo replace trailing spaces
find . -type f -not -path '*/\.*' -regex '.*\.\(php\|inc\|css\)$' \
    -exec echo {} + \
    -exec sed -i 's/ *$//g' {} +

popd

#eof