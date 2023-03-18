FROM alpine:edge

RUN apk update && \
    apk add --no-cache ca-certificates wget unzip && \
    rm -rf /var/cache/apk/*

ADD apps.sh /apps.sh
RUN chmod +x /apps.sh

CMD /apps.sh    
