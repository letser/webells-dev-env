#!/bin/bash
export LOCAL_IP=$(ifconfig | grep 'inet ' | grep -v 127.0.0.1 | awk '{print $2}')
docker run --rm --interactive letser/kafka kafka-console-producer.sh --topic test --broker-list $LOCAL_IP:9092