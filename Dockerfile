FROM debian:stretch

RUN apt-get update -yqq && apt-get install -yqq \
    build-essential \
    git \
    xorg-dev \
    debhelper \
    libmtdev-dev \
    xserver-xorg-dev \
    && rm -rf /var/lib/apt/lists/*

VOLUME ["/mnt/output"]

CMD cd /tmp && \
    git clone https://github.com/p2rkw/xf86-input-mtrack.git --depth=1 && \
    cd xf86-input-mtrack && \
    ./configure --prefix=/usr && \
    dpkg-buildpackage && \
    cd .. && \
    mv *.deb /mnt/output/ && \
    echo "***OUTPUT BELOW THIS LINE***" && \
    ls /mnt/output
