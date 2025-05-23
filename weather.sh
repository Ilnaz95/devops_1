#!/usr/bin/bash

CITY=$1

echo "<HTML><HEAD><meta charset='UTF-8'></HEAD><BODY>"

date
echo "<br/>"
echo "${CITY}"
echo "<br/>"

curl -s https://wttr.in/${CITY}?format=j1 | jq '.["current_condition"][0] | .temp_C, .humidity'

echo "</BODY></HTML>"
