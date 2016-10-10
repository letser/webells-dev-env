#!/bin/bash 

LOCAL_IP=$(ifconfig | grep 'inet ' | grep -v 127.0.0.1 | awk '{print $2}')

# Prepare docker-compose.yml with local ip 
cat docker-compose.template.yml | sed \
  -e "s|{{LOCAL_IP}}|${LOCAL_IP}|g" \
   > docker-compose.yml
