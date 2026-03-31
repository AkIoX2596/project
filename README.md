#!/bin/bash

echo "===== System Information ====="
echo "User: $(whoami)"
echo "Kernel: $(uname -r)"
echo "Uptime: $(uptime -p)"
echo "Date: $(date)"
#!/bin/bash

if dpkg -l | grep -q git
then
    echo "Git is installed"
    git --version
else
    echo "Git is NOT installed"
fi#!/bin/bash

echo "===== Directory Audit ====="

for dir in /etc /home /usr/bin
do
    echo "Checking: $dir"
    ls -ld $dir
    du -sh $dir 2>/dev/null
    echo "-------------------------"
done#!/bin/bash

count=0

while read line
do
    if echo "$line" | grep -iq error
    then
        count=$((count+1))
    fi
done < /var/log/syslog

echo "Total Error Count: $count"#!/bin/bash

read -p "Enter tool name: " tool
read -p "What does freedom mean to you: " freedom
read -p "What will you build: " build

echo "===== Open Source Manifesto =====" > manifesto.txt
echo "I use $tool in my workflow." >> manifesto.txt
echo "Freedom means $freedom." >> manifesto.txt
echo "I plan to build $build and share it." >> manifesto.txt

cat manifesto.txt
