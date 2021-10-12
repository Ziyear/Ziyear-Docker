#!/bin/bash
# 删除所有容器和镜像的脚本
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker rmi -f $(docker images -qa)
