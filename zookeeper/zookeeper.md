### ZooKeeper 搭建笔记

zookeeper 的使用场景如下:
- 分布式协调
- 分布式锁
- 元数据/配置信息管理
- HA高可用性
- 发布/订阅
- 负载均衡
- Master选举

**Manage Command**
```shell
# 启动编排容器
docker-compose -f docker-compose-zookeeper-cluster.yml up -d
# 进入容器，根据名字
docker exec -it zoo1 /bin/sh
# 查看运行状态
./zkServer.sh status
# 查看选举数据，宿主机执行，注意端口
echo srvr | nc localhost 2184
# 连接服务，注意端口
./zkCli.sh -server 127.0.0.1:2181

```