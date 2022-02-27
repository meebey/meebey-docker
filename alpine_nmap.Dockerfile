FROM alpine
RUN apk --update add nmap && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*
ENTRYPOINT ["/usr/bin/nmap"]
