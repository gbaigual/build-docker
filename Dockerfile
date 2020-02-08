FROM debian:buster-slim

MAINTAINER gb

COPY command.sh /

ENTRYPOINT ["/command.sh"]
CMD ["Hello World nan"]
