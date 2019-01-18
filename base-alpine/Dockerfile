FROM alpine
MAINTAINER Hobbey W "hobbey12@gmail.com"

ADD bashrc-alpine /tmp/
ADD localtime /etc/localtime

RUN cat /tmp/bashrc-alpine >> /root/.bashrc &&\
    rm -f /tmp/bashrc-alpine &&\

    # add local apk mirror
    echo "http://mirrors.ustc.edu.cn/alpine/v`cat /etc/alpine-release | cut -d . -f 1,2`/main/" > /etc/apk/repositories &&\

    # install basic tools ( wget telnet traceroute nc tar unzip were already built-in )
    apk --no-cache add bash vim curl tcpdump zip htop &&\
    rm -rf /var/cache/apk/*
