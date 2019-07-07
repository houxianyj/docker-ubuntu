FROM ubuntu:19.10

RUN set -eux; \
    \
    fetchSoft=" \
        iputils-ping \
        iproute \
        net-tools \
        procps \
    ";\
    apt update; \
    apt -y install  --no-install-recommends $fetchSoft; \
    rm -rf /var/lib/apt/lists/*; \

CMD ["/bin/bash"]