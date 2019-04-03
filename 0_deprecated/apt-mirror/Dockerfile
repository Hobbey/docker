# Local apt source mirror 
FROM ubuntu:16.04
MAINTAINER Hobbey W "hobbey12@gmail.com"

# Set Env
#ENV http_proxy http://proxy:port
ADD sources_ubuntu_16_04_sh.list /etc/apt/sources.list

# Install latest apt-mirror
ENV APT_MIRROR_VERSION 0.5.4
ADD https://github.com/apt-mirror/apt-mirror/releases/download/${APT_MIRROR_VERSION}/apt-mirror-${APT_MIRROR_VERSION}.tar.xz /tmp/apt-mirror.tar.xz
RUN tar xf /tmp/apt-mirror.tar.xz -C /tmp/ && \
    mv /tmp/apt-mirror-${APT_MIRROR_VERSION}/apt-mirror /usr/bin/ && \
    chmod +x /usr/bin/apt-mirror && \
    mkdir -p /var/spool/apt-mirror

# Add mirror.list file
ADD mirror_cn.list /etc/apt/mirror.list

# Set crontab job for apt-mirror (or you can disable this and update manually)


# Install Nginx for http server
RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Add nginx config file


# Start nginx by default
CMD ["nginx", "-g", "daemon off;"]
