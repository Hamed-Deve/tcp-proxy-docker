FROM alpine:3.10.1

RUN apk add --update bash socat

COPY tcp-proxy.sh /usr/bin/tcp-proxy

ENTRYPOINT ["tcp-proxy"]

EXPOSE 443

CMD tcp-proxy 91.107.139.147 443
