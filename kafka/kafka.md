### 搭建笔记
- kafka 集群依赖 zookeeper

**Manage Command**
```shell
# 启动命令
docker-compose -f docker-compose-kafka-cluster.yml up -d
# 进入安装目录
cd /opt/kafka/
# 查看 topics 列表
./bin/kafka-topics.sh --list --zookeeper zoo1:2181,zoo2:2181,zoo3:2181
# 查看 topic 详情
./bin/kafka-topics.sh --zookeeper zoo1:2181,zoo2:2181,zoo3:2181 --describe --topic test
# 新建主题
./bin/kafka-topics.sh --create --zookeeper zoo1:2181,zoo2:2181,zoo3:2181 --replication-factor 2 --partitions 3 --topic test
# 生产消息
./bin/kafka-console-producer.sh --broker-list kafka1:9092,kafka2:9092,kafka3:9092  --topic test
# 消费消息
./bin/kafka-console-consumer.sh --bootstrap-server kafka1:9092,kafka2:9092,kafka3:9092 --topic test --from-beginning
# 查看消费者组
./bin/kafka-consumer-groups.sh --bootstrap-server kafka1:9092,kafka2:9092,kafka3:9092 --list

```

### 管理
- 使用 http://localhost:9000/ 访问 Kafka 管理后台