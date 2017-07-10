## Simple way to run private docker registry

#### run unsafe docker registry:

```
mkdir -p /data/docker-registry
docker run -d -p 80:5000 -v /data/docker-registry --name docker-registry registry:2
```

#### config docker client running with "--insecure-registry"

In Upstart and SysVinit OS : ( Ubuntu 14.04 , CentOS 6 )

```
vim /etc/default/docker
DOCKER_OPTS="--insecure-registry 10.0.0.0/8"
```

In Systemd OS : ( Ubuntu 16.04 , CentOS 7 , CoreOS )

```
vim
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
