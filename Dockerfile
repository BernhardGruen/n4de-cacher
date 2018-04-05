ARG ALPINE_VERSION
FROM alpine:${ALPINE_VERSION}

COPY files/vmtouch /usr/local/bin/vmtouch

VOLUME [ "/data" ]
ENTRYPOINT [ "/usr/local/bin/vmtouch" ]
CMD ["-v", "-t", "/data"]