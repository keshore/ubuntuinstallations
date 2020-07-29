#!/bin/bash
sudo mkdir -p /oradata && sudo chmod 777 /oradata
docker run  \
-p 1521:1521 \
-p 5050:5500 \
-v /oradata:/opt/oracle/oradata \
oracle/database:18.4.0-xe
