#!/bin/bash
export LOCAL_IP=$(ifconfig | grep 'inet ' | grep -v 127.0.0.1 | awk '{print $2}')
docker run --rm letser/kafka kafka-console-consumer.sh --topic test --from-beginning --zookeeper $LOCAL_IP:2181
