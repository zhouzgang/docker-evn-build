### Mycat
- Mycat 容器启动命令， docker run --name mycat -p 8066:8066 -p 9066:9066 -v /Users/brian.zhou/Documents/workspace/docker/mysql/mycat/conf/:/usr/local/mycat/conf/ -v /Users/brian.zhou/Documents/workspace/docker/mysql/mycat/logs/:/usr/local/mycat/logs/ -d mycat-1.6.7.5

- 进入容器 docker exec -it 91b60a9110e4 /bin/bash 