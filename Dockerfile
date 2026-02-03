FROM debian:stable-slim

ENV UOS_SERVER_VERSION="5.0.6"
ENV FIRMWARE_PLATFORM="linux-x64"

STOPSIGNAL SIGRTMIN+3

COPY entrypoint.sh /root/entrypoint.sh

RUN ["chmod", "+x", "/root/entrypoint.sh"]
ENTRYPOINT ["/root/entrypoint.sh"]
