FROM debian:buster-slim

MAINTAINER gb
RUN     set -uex ; \
        apt update ; \
        apt -y install wget nmap

COPY command.sh /

ENTRYPOINT ["/command.sh"]
CMD ["Hello World nan"]
