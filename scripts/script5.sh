#!/bin/bash
read -p "Tool: " tool
read -p "Freedom: " freedom
read -p "Build: " build

echo "I use $tool. Freedom means $freedom. I will build $build." > manifesto.txt
cat manifesto.txt
