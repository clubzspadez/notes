## Docker Notes 4/10/2020

##Why use docker?
Docker is a tool designed to make it easier to create, deploy, and run applications by using containers. Containers allow a developer to package up an application with all of the parts it needs, such as libraries and other dependencies, and deploy it as one package.

####Containers
- Builder: tech used to build a container
- Engine: tech used to run a container
- Orchestrastion: tech used to manage many containers (ie:Kubernetes)

## 

###Docker Commands
+ To check docker version on client and server
`docker version `

returns something like this:
 
```Client: Docker Engine - Community
  Version:           19.03.8
  API version:       1.40
  Go version:        go1.12.17
  Git commit:        afacb8b
  Built:             Wed Mar 11 01:21:11 2020
  OS/Arch:           darwin/amd64
  Experimental:      false
 
 Server: Docker Engine - Community
  Engine:
   Version:          19.03.8
   API version:      1.40 (minimum version 1.12)
   Go version:       go1.12.17
   Git commit:       afacb8b
   Built:            Wed Mar 11 01:29:16 2020
   OS/Arch:          linux/amd64
   Experimental:     false
  containerd:
   Version:          v1.2.13
   GitCommit:        7ad184331fa3e55e52b890ea95e65ba581ae3429
  runc:
   Version:          1.0.0-rc10
   GitCommit:        dc9208a3303feef5b3839f4323d9beb36df0a9dd
  docker-init:
   Version:          0.18.0
   GitCommit:        fec3683
```

+ `docker info ` will return current docker/containers setup
+ will return most config values of engine
- command: `docker version` verifies that cli can talk to engine
+ `docker container ls` -> list running containers
_______
### Docker command format
- new "management commands" format:
`docker <comand> <sub-command> (options)`
- old way:
`docker <commmand> (options)`
___
### Starting a nginx web server


#### Image vs Container

- An image is the application we want to run 
- A container is an instance of that image running as a process
- You can have many instances(containers) of the same image
_______
### Example of creating docker container 
`docker container run --publish 80:80 nginx`
1. This downloads image 'nginx' from docker hub
2. Starts a new container from that image
3. Opens port 80 on the host IP

Output:
```
Unable to find image 'nginx:latest' locally
latest: Pulling from library/nginx
c499e6d256d6: Pull complete 
74cda408e262: Pull complete 
ffadbd415ab7: Pull complete 
Digest: sha256:282530fcb7cd19f3848c7b611043f82ae4be3781cb00105a1d593d7e6286b596
Status: Downloaded newer image for nginx:latest
```
Using `--detach` option we can run this in the background
`docker container run --publish 80:80 --detach nginx`
Output: returns container id that is running in back ground

```bash
docker container run --publish 80:80 --detach nginx
11fa2bea6f9ba522af3bea6b619312cbfcc11d327c72fbd90db2de037425d534
```

`docker container ls` should list current running containers

Output:
```bash
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                NAMES
11fa2bea6f9b        nginx               "nginx -g 'daemon of…"   2 minutes ago       Up 2 minutes        0.0.0.0:80->80/tcp   lucid_maxwell
```

- `docker container ls -a` should list all previous and current running containers
- `--name CUSTOM_NAME` will allow us to name the container when create it
- `docker container logs NAME_OF_CONTAINER` will provide logs for the container

IE: 
```bash
docker container logs lucid_maxwell
172.17.0.1 - - [10/Apr/2020:15:19:13 +0000] "GET / HTTP/1.1" 200 612 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:74.0) Gecko/20100101 Firefox/74.0" "-"
172.17.0.1 - - [10/Apr/2020:15:19:13 +0000] "GET /favicon.ico HTTP/1.1" 404 153 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:74.0) Gecko/20100101 Firefox/74.0" "-"
2020/04/10 15:19:13 [error] 7#7: *1 open() "/usr/share/nginx/html/favicon.ico" failed (2: No such file or directory), client: 172.17.0.1, server: localhost, request: "GET /favicon.ico HTTP/1.1", host: "localhost"
```

Clean up or remove containers 
- `docker container rm CONTAINER_ID` will remove or delete containers
- If the container is running you may need to force the removal 
`docker container rm -f CONTAINER_ID`
___
### What happens in `docker container run --publish 80:80 nginx`

1. Looks for that image locally in image cache 
2. then looks in remote image repo if not present
3. Downloads latest version of image
4. Creates new container based on that image and prepares to start
5. Gives it a virtual ip on private network inside the engine
6. Opens up on port 80 on host and forwards to 80 in container
7 Starts container by using CMD in the image 
---
### What is a container?
- They are just processes
- Limited to what resources they can access
- Exit when the process stops
- They are not VM's
---
Assignment: Manage multiple containers 
- Run nginx server
- Run it with --detach(-d), name it with --name
- Should listen on 80:80
- When running you can set --env option and pass a TEST_VAR=test
- Use docker container logs to find the value assigned on start up
- Clean up the container by using docker container stop and docker container rm
- Use docker container ls to check running containers
--- 
### To see what is going on in a container 
- `docker container top container_name` process list in one container
- `docker container inspect container_name` details of one container config
