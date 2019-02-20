FROM ubuntu:12.04
MAINTAINER Hobbey W "hobbey12@gmail.com"

ADD bashrc /tmp/
ADD sources_ubuntu_12_04_sh.list /etc/apt/sources.list

# Set Env
ENV LANG C.UTF-8
#ENV http_proxy proxy:port
#ENV https_proxy proxy:port
#ENV no_proxy localhost,10.0.0.0/8,192.168.0.0/16

RUN cat /tmp/bashrc >> /root/.bashrc &&\
    rm -f /tmp/bashrc &&\
    rm -f /etc/localtime &&\
    ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime &&\

    # Install packages
    apt-get update && \
    apt-get install -y ca-certificates ccze htop \
                       curl wget \
                       dnsutils traceroute tcpdump telnet netcat \
                       tar zip unzip \
                       less vim \
                       make gcc libbsd-dev && \
    apt-get clean && rm -rf /var/lib/apt/lists/* && \

    # download APUE 3e source code
    wget http://www.apuebook.com/src.3e.tar.gz -O /tmp/src.3e.tar.gz &&\
    tar zxvf /tmp/src.3e.tar.gz -C /root/ &&\
    rm -f /tmp/src.3e.tar.gz

WORKDIR /root/apue.3e/
