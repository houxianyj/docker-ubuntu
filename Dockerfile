FROM ubuntu:18.04

RUN set -eux; \
    cp -r /etc/apt/sources.list /etc/apt/sources.list.bak && sed -i "s/\/\/.*archive.ubuntu.com/\/\/mirrors.aliyun.com/g;s/\/\/.*security.ubuntu.com/\/\/mirrors.aliyun.com/g" /etc/apt/sources.list

RUN set -eux; \
    apt-get update; \
    apt-get -y --no-install-recommends install vim iproute2 iputils-ping; \
    rm -rf /var/lib/apt/lists/*;

CMD ["/bin/bash"]