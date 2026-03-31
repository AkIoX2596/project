#!/bin/bash
count=0
while read line
do
 if echo "$line" | grep -iq error
 then
  count=$((count+1))
 fi
done < /var/log/syslog

echo "Error count: $count"
