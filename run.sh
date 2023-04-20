#!/bin/bash

./build.sh

cppFilePath="/workspaces/competitive-programming/src"
inputFilePath="/workspaces/competitive-programming/src/input"
outputFilePath="/workspaces/competitive-programming/src/output"

> $outputFilePath/actual.txt

./src/a.out < $inputFilePath/input.txt >> "${outputFilePath}/actual.txt"

diff -Z "${outputFilePath}/actual.txt" "${outputFilePath}/expected.txt"

rm "${cppFilePath}/a.out"