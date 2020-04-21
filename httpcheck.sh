#!/bin/bash

status=$(curl -LI localhost:8090/sparkjava-hello-world-1.0/hello  -o /dev/null -w '%{http_code}\n' -s)

codeNum=$((status))

if [ $codeNum -ge 300 ]
then
        echo "ERROR"
        exit 1
fi

echo $codeNum
