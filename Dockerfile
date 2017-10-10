FROM debian:stretch

RUN apt-get update -yqq && apt-get install -yqq \
    build-essential \
    git \
    xorg-dev \
    debhelper \
    libmtdev-dev \
    xserver-xorg-dev \
    && rm -rf /var/lib/apt/lists/*

VOLUME /tmp/output
WORKDIR /tmp

ADD ./build.sh /tmp/

CMD sh ./build.sh && mv *.deb /tmp/output
