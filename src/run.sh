#!/bin/bash

cppFilePath="/workspaces/competitive-programming/src"
inputFilePath="/workspaces/competitive-programming/src/input"
outputFilePath="/workspaces/competitive-programming/src/output"

> $outputFilePath/actual.txt

/bin/g++ -Wall -std=c++11 "${cppFilePath}/main.cpp" -o a.out && ./a.out < $inputFilePath/input.txt >> "${outputFilePath}/actual.txt"
diff "${outputFilePath}/actual.txt" "${outputFilePath}/expected.txt"

rm "${cppFilePath}/a.out"