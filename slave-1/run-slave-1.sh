#!/bin/bash
docker run -d --restart=always \
        --name kt-slave-1 \
        --hostname kt-slave-1 \
        --net=kt_vlan \
        --ip 10.2.0.211 \
        -v $(pwd)/db:/opt/kt/db \
        -v $(pwd)/start.sh:/start.sh \
        -p 11211:11211 \
        narate/ktserver /start.sh
