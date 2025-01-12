FROM alpine:3.21

RUN apk update && apk upgrade && apk add --no-cache dump1090

EXPOSE 30001-30005 30104

ENTRYPOINT ["dump1090","--net","--quiet"]
