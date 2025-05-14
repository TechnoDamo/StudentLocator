FROM alpine:3.18
RUN apk add --no-cache ca-certificates
COPY k6 /usr/bin/k6
ENTRYPOINT ["k6"]
