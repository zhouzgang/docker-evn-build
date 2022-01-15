### docker 使用笔记
> 可以将处理完后的思考理解记录下来，而不是复制粘贴记录
> 这个最终目标是可以写使用 make 命令随意搭建各种组件，不需要每次为了搭建环境而花时间

### docker 操作笔记
```shell
# 搜索远程仓库有哪些 kafka images
docker search kafa
# 进入容器，根据名字
docker exec -it zoo1 /bin/sh
# 启动 docker 编排的容器
docker-compose -f docker-compose-zookeeper-cluster.yml up -d
# 关闭 docker 编排的容器
docker-compose -f docker-compose-zookeeper-cluster.yml stop
# 关闭所有容器

# delete all <none> images
docker rmi `docker images | grep  "<none>" | awk '{print $3}'`

# delete all exited container
docker rm `docker ps -a | grep Exited | awk '{print $1}'`

# 构建本地镜像
docker build -t statement:v1 .

# tag镜像
docker tag statement:v1 lalamove/statement:v1

# 推送镜像到远程仓库
docker push bladeandmaster/springboot-demo:1.0

```

### docker 问题排查
```shell
# 查看 docker 日志，可用于排查容器启动问题
docker logs -f -t --tail 20 consul_node_1
# 查看容器对应的IP
docker inspect -f '{{.Name}} - {{.NetworkSettings.IPAddress }}' $(docker ps -aq)
# 查看容器对应的IP，使用 docker-compose 启动的情况
docker inspect -f '{{.Name}} - {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -aq)

```


### todo
- apollo


## docker 网络管理
*记录*
- 使用统一的网络 docker_net，不同组件使用不同网段
- 命令使用直接看文档就行，这里记录使用实践
- docker-compose的网络名的规则是：<COMPOSE_PROJECT_NAME>_<NETWORKS>

```shell
# DNS  服务器
ip: 192.168.1.2
port: 8079

# 网络分为两部分，svc-应用服务，base-各种组件；
# 组件网段
docker network create --subnet 192.168.1.0/24 --gateway 192.168.1.1 docker_base   

# 服务网段
docker network create --subnet 192.168.0.0/24 --gateway 192.168.0.1 docker_svc

# 跨网段通信还没解决，先使用同网段，不同IP段解决
# base 192.168.1.2 ~ 192.168.1.99
# svc 192.168.1.100 ~ 192.168.1.254
```

**网段划分**
- dns         192.168.1.2
- mycat       192.168.1.3 ～ 192.168.1.9
- mysql       192.168.1.10
- redis       192.168.1.11 ～ 192.168.1.19
- apollo      192.168.1.20 ～ 192.168.1.24
- rabbit      192.168.1.25 ～ 192.168.1.29
- consul      192.168.1.30 ～ 192.168.1.34
- kafka       192.168.1.35 ～ 192.168.1.39
- xxljob      192.168.1.40 ～ 192.168.1.44
- zookeeper   192.168.1.45 ～ 192.168.1.49

### DNS 服务搭建
```shell
docker run --name bind -d --restart=always --publish 53:53/tcp --publish 53:53/udp --publish 10000:10000/tcp  --volume docker-bind:/data sameersbn/bind
```



*参考*
- [网络管理](https://www.cnblogs.com/lei0213/p/12631681.html)
- [network manage](https://andrewpqc.github.io/2017/09/20/Network-management-of-Docker/)


