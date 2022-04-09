#!/bin/bash

SOURCE="/import/"

if [ -z "$2" ]; then
    find "$SOURCE" -type f -exec $0 $SOURCE "{}" \;
else
    echo '{"message": {"source": "'$2'", "data": "'$(base64 -w0 "$2")'" }}' \
    | mosquitto_pub -h $MQTT_SERVER -t "${MQTT_TOPIC}/pipe" --stdin-file
fi
