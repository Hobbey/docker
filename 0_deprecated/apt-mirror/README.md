For admin:

docker build -t docker-registry.hobbey.com/public/apt-mirror .

docker run -d -p 80:80 -v /data:/var/spool/apt-mirror --name apt-mirror docker-registry.hobbey.com/public/apt-mirror

\# update apt mirror manually

```
docker exec -ti apt-mirror bash  
apt-mirror  
```
or 
 
```
docker exec -ti -d apt-mirror apt-mirror  
```

---

User usage:

vim /etc/apt/sources.list

On Ubuntu 14.04:  

```
# Ubuntu 14.04 Trusty Tahr -- Mirror located in XXX
deb http://apt-mirror.hobbey.com/ubuntu/ trusty main restricted universe multiverse
deb http://apt-mirror.hobbey.com/ubuntu/ trusty-security main restricted universe multiverse
deb http://apt-mirror.hobbey.com/ubuntu/ trusty-updates main restricted universe multiverse
```
On Ubuntu 16.04:  

```
# Ubuntu 16.04 Xenial Xerus -- Mirror located in XXX
deb http://apt-mirror.hobbey.com/ubuntu/ xenial main restricted universe multiverse
deb http://apt-mirror.hobbey.com/ubuntu/ xenial-security main restricted universe multiverse
deb http://apt-mirror.hobbey.com/ubuntu/ xenial-updates main restricted universe multiverse
```

