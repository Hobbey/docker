FROM ubuntu:18.04
MAINTAINER Hobbey W "hobbey12@gmail.com"

# CST shanghai timezone
COPY localtime_sh /etc/localtime_sh
RUN ln -sf /etc/localtime_sh /etc/localtime &&\
    echo "Asia/Shanghai" > /etc/timezone
# add local mirror: apt pip
COPY sources_ubuntu_18_04_sh.list /etc/apt/sources.list
COPY aliyun_mirror_pip.conf /root/.pip/pip.conf
COPY bashrc /tmp/

# Set Env
ENV LANG C.UTF-8
#ENV http_proxy proxy:port
#ENV https_proxy proxy:port
#ENV no_proxy localhost,10.0.0.0/8,192.168.0.0/16

RUN cat /tmp/bashrc >> /root/.bashrc &&\
    rm -f /tmp/bashrc &&\
    # Install packages
    apt update && \
    apt install -y software-properties-common ca-certificates \
                   ccze htop \
                   curl wget lrzsz ftp \
                   dnsutils traceroute tcpdump telnet netcat net-tools iputils-ping \
                   tar zip unzip \
                   git \
                   less vim \
                   # required by pip
                   python3-distutils &&\
    apt clean && rm -rf /var/lib/apt/lists/* &&\
    # set python3 as default (3.6 already inside)
    ln -s /usr/bin/python3 /usr/bin/python &&\
    # install latest pip
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py &&\
    python get-pip.py &&\
    rm -rf get-pip.py
