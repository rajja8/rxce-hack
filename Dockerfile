FROM debian:latest
LABEL MAINTAINER="https://github.com/rajja8/Rxcehack"

WORKDIR /Rxcehack/
ADD . /Rxcehack

RUN apt update && \
    apt full-upgrade -y && \
    apt install -y curl unzip wget && \
    apt install --no-install-recommends -y php && \
    apt clean
CMD ["./Rxcehack.sh"]
