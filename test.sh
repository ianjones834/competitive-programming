#! /bin/bash
source .filepath.sh

./build.sh
> $outputFilePath/actual.txt

./src/main < $inputFilePath/input.txt >> "${outputFilePath}/actual.txt"
diff -Z "${outputFilePath}/actual.txt" "${outputFilePath}/expected.txt"