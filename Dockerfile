FROM debian:stable-slim

RUN apt update && apt install -y --no-install-recommends bzip2 curl ca-certificates
RUN curl -L https://github.com/mozilla/grcov/releases/latest/download/grcov-linux-x86_64.tar.bz2 | tar jxf - -C /usr/local/bin

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
