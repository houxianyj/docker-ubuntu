FROM ubuntu:19.10

RUN set -eux; \
    \
    fetchSoft=' \
        iputils-ping \
        net-tools \
        procps \
        vim \
    ';\
    apt-get update; \
    apt-get -y install  --no-install-recommends $fetchSoft; \
    rm -rf /var/lib/apt/lists/*;


CMD ["/bin/bash"]