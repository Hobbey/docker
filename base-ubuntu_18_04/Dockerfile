FROM ubuntu:18.04
MAINTAINER Hobbey W "hobbey12@gmail.com"

ADD bashrc /tmp/
ADD sources_ubuntu_18_04_sh.list /etc/apt/sources.list

# Set Env
#ENV http_proxy proxy:port
#ENV https_proxy proxy:port
#ENV no_proxy localhost,10.0.0.0/8,192.168.0.0/16

RUN cat /tmp/bashrc >> /root/.bashrc &&\
    rm -f /tmp/bashrc &&\

    # Install packages
    apt update && \
    apt install -y ca-certificates ccze htop \
                   curl wget \
                   dnsutils traceroute tcpdump telnet netcat net-tools \
                   tar zip unzip \
                   less vim && \
    apt clean && rm -rf /var/lib/apt/lists/*
