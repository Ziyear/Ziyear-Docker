#!/bin/bash
# 运行容器的脚本
docker run -d -p 80:80 -p 443:443 -v /home/admin/nginx/logs:/usr/local/nginx/logs \
-v /home/admin/ziyear-docker/logs:/home/admin/ziyear-docker/logs --name ziyear-docker ziyear-docker:1.0
