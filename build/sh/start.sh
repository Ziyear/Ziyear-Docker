#!/bin/bash

echo "start app..."
nohup java -jar /usr/app/app.jar >/dev/null 2>log & 
echo "start app success."

echo "start nginx..."
# shellcheck disable=SC2164
cd /usr/local/nginx/sbin
./nginx -g 'daemon off;'
echo "start nginx success."


