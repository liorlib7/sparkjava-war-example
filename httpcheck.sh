#!/bin/bash
status=$(curl -LI localhost:8090/sparkjava-hello-world-1.0/hello  -o /dev/null -w '%{http_code}\n' -s)
if [ "$status" == "2"* ]
then 
    echo " URL is working fine"
    break
    #docker rm -f www
else
    echo "URL is not working"
    exit 1
fi
echo "$status"
