# Ubuntu 16.04 Docker Base Image
FROM ubuntu:16.04
MAINTAINER Hobbey W "hobbey12@gmail.com"

# Set Env
#ENV http_proxy proxy:port
#ENV https_proxy proxy:port
#ENV no_proxy localhost,10.0.0.0/8,192.168.0.0/16
ENV DEBIAN_FRONTEND noninteractive

# add local apt mirror
ADD sources_ubuntu_16_04_sh.list /etc/apt/sources.list

# Install basic packages
RUN apt update && \
    apt install -y ca-certificates ccze curl dnsutils htop python python-pip tcpdump telnet traceroute unzip vim wget zip && \
    apt clean && rm -rf /var/lib/apt/lists/*
