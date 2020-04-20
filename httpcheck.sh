#!/bin/bash

export test=$(curl -LI localhost:8080 -o /dev/null -w '%{http_code}\n' -s)


if [[ $test == 2* ]]
then
	docker rm -f testi
else
	echo "HTTP Error!" 1>&2
	exit 1
fi

