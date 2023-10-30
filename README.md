
## Newt-Scamander-SRE_microservices
Newt-Scamander-SRE microservices repository

### README Docker-2
#### Done:
 - Docker install on local host
 - run some containers
 - docker commands test
 - Create `docker-1.log` with some notes for dummies

#### Docker-2
#### Plan
*Docker machine deprecated since 2019* used this Plan instead
- Create "Golden image" from docker-server-VM with installed docker engine using Packer and Ansible
  1) Packer:
    - update and check ansible plugin
        - install:
        ```bash
        packer plugins install github.com/hashicorp/ansible
        packer plugins installed
        ```
    - create `docker-img-create.json` with ansible provisioner
  2) Ansible: Create playbook for install and configure docker (`docker_install.yml`)

- Use terraform to create clean docker-server-VM in YC
  1) App instance - set the count. DB instance - only one.

- Create ansible playbook that deploy and run container on docker-server-VM (local or Yandex repository)


- Create locally (docker desktop) docker image with app
- Public docker image in Docker-hub and YC registry
- Pull docker image from Docker hub or YC registy and run it on remote docker-server
- Add task to ansible playbook, created earlier,  to run container from YC repository image
- Makes some checks from homework


#### Usefull command
```
docker info
docker version
docker ps #running containers
docker ps -a #all containers
docker images #show all images
docker run -it <somename>:<someversion> /bin/bash #run container from image, every runs - new container(id)
docker start
docker attach #no process in container - container will stop
docker exec -it some_container_name bash # run new process in container (for example bash)
docker kill $(docker ps -q) #kill all running containers (docker ps -q : show all runnning containers on quick mode (only id))
docker system df #used space on disk
docker rm $(docker ps -a -q) #remove  containers (running can't be remove)
docker rmi $(docker images -q)  #remove images (depended can't be remove)
```

```
yc compute image list --folder-id standard-images | grep ubuntu*lts

```
Registry yc service account to access to yandex cloud docker repo (also repeat at all VM)
```
yc container registry configure-docker
```
Create registry. Save your ID registry. Important: you should add tag image like 'cr.yandex/<ID-of-your-registry>/<Name-of-your-docker-image>:<tag>'
```
yc container registry create --name otus-docker-2
```
After that you should push image to YC repo: `docker push cr.yandex/<ID-of-your-registry>/<Name-of-your-docker-image>:<tag>`


`docker dif`
```
docker diff reddit
A /test121
A /test121/test-file
C /var
C /var/lib
C /var/lib/mongodb
A /var/lib/mongodb/journal
A /var/lib/mongodb/journal/prealloc.2
A /var/lib/mongodb/journal/j._0
A /var/lib/mongodb/journal/lsn
A /var/lib/mongodb/journal/prealloc.1
A /var/lib/mongodb/local.0
A /var/lib/mongodb/local.ns
A /var/lib/mongodb/mongod.lock
A /var/lib/mongodb/user_posts.0
A /var/lib/mongodb/user_posts.ns
C /var/log
A /var/log/mongod.log
C /root
A /root/.bash_history
C /tmp
A /tmp/mongodb-27017.sock
D /opt

```

get container from yc repo after `yc init` and `yc container registry configure-docker`:
```
docker run --name reddit -d -p 9292:9292 cr.yandex/<put_yc-repo-id>/otus-reddit:v1.0.0
```
