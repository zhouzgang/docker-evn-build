#基于openjdk:8 创建镜像,
#如果是基于centos或其他的，必须保证已安装了JDK，否则就需要在Dockerfile文件中也ADD进来
FROM openjdk:8

#将宿主机目录下的文件拷贝进镜像且ADD命令会自动处理URL和解压tar压缩包
#将mycat解压到/usr/local目录中,得到 /usr/local/mycat
ADD Mycat-server-1.6.7.5-linux.tar.gz /usr/local

#容器数据卷，用于数据保存和持久化工作
#将mycat的配置文件的地址暴露出映射地址,启动时直接映射宿主机的文件夹
VOLUME /Users/brian.zhou/Documents/workspace/docker/mysql/mycat
WORKDIR /usr/local/mycat

#用来在构建镜像过程中设置环境变量
ENV MYCAT_HOME=/usr/local/mycat

#暴露出MyCat的所需端口
EXPOSE 8066 9066

#以前台进程的方式启动MyCat服务
CMD ["/usr/local/mycat/bin/mycat", "console","&"]