FROM alpine:3.14

RUN apk add bash findutils mosquitto-clients
ADD script.sh /script.sh

ENTRYPOINT [ "/script.sh" ]
