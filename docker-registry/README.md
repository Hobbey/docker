## Simple way to run private docker registry

#### run unsafe docker registry:

On your private docker registry server:

```
mkdir -p /data/docker-registry
docker run -d -p 80:5000 -v /data/docker-registry:/data --name docker-registry registry:2
```

#### config docker client running with "--insecure-registry" , and restart docker

In Upstart and SysVinit OS : ( Ubuntu 14.04 )

```
vim /etc/default/docker

DOCKER_OPTS="--insecure-registry 10.0.0.0/8"

service docker restart
```

In Systemd OS : ( Ubuntu 16.04 , CentOS 7 , CoreOS )

```
mkdir -p /etc/systemd/system/docker.service.d/
vim /etc/systemd/system/docker.service.d/docker.conf

[Service]
ExecStart=
ExecStart=/usr/bin/docker daemon -H fd:// --insecure-registry 192.168.0.0/16

systemctl daemon-reload
systemctl restart docker
```

That's it , a simple private docker registry is working  
Of course , no SSL , no access control , and no nginx front of the registry  
now you can tag your docker images , and push it to your private registry  

```
docker tag ubuntu:16.04 your-registry-url/official/ubuntu:16.04
docker push your-registry-url/official/ubuntu:16.04
```

---

## Recommended way to run private docker registry

run nginx front of the registry , and using nginx handle the SSL and user authorization  
