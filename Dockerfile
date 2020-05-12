FROM ubuntu:18.04
COPY sources.list /etc/apt/sources.list
RUN apt update -y && apt install make gcc tar -y && rm -rf /var/lib/apt/lists/*
WORKDIR /home/ubuntu
COPY 3proxy-0.8.13.tar.gz .
RUN tar -xzvf 3proxy-0.8.13.tar.gz && \
    mv 3proxy-0.8.13 3proxy && \
    cd 3proxy && \
    make -f Makefile.Linux && make -f Makefile.Linux install && \
    mkdir /var/log/3proxy
COPY 3proxy.cfg /home/ubuntu/3proxy/scripts/3proxy.cfg
CMD 3proxy /home/ubuntu/3proxy/scripts/3proxy.cfg
