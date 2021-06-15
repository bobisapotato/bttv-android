#!/bin/bash

docker exec docker_android adb wait-for-device

A=$(docker exec docker_android adb shell getprop sys.boot_completed | tr -d '\r')

while [ "$A" != "1" ]; do
        sleep 5
        A=$(docker exec docker_android adb shell getprop sys.boot_completed | tr -d '\r')
        echo "$A"
done
