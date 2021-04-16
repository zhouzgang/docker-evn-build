### docker 使用笔记
> 可以将处理完后的思考理解记录下来，而不是复制粘贴记录
> 这个最终目标是可以写使用 make 命令随意搭建各种组件，不需要每次为了搭建环境而花时间

## docker 操作笔记
```shell
# 搜索远程仓库有哪些 kafka images
docker search kafa
# 进入容器，根据名字
docker exec -it zoo1 /bin/sh
# 启动 docker 编排的容器
docker-compose -f docker-compose-zookeeper-cluster.yml up -d
# 关闭 docker 编排的容器
docker-compose -f ocker-compose-zookeeper-cluster.yml stop
```


## docker 网络管理
- [网络管理](https://www.cnblogs.com/lei0213/p/12631681.html)
- [network manage](https://andrewpqc.github.io/2017/09/20/Network-management-of-Docker/)


