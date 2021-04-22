### Consul build notes

- Consul 提供了对服务发现、配置和功能性细分(segmentation functionality)全面控制的服务网格(service mersh)解决方案。入门从这里开始。

- consul启动重要参数-bind需要是私有ip地址，默认其实就是0.0.0.0
- consul有三种模式运行，client, server,dev。

注意：dev模式运行是不会持久化数据，也就重启之后保存的配置信息会丢失。

* 下面配上consul启动参数简单说明：
agent 　　                   Consul的核心命令，主要作用有维护成员信息、运行状态检测、声明服务以及处理请求等
-server　　                  就是代表server模式
-ui 　　                     代表开启web 控制台
-bootstrap-expect           代表想要创建的集群数目，官方建议3或者5
-data-dir                   数据存储目录
-node                       代表当前node的名称
-client                     应该是一个客户端服务注册的地址，可以和当前server的一致也可以是其他主机地址，系统默认是127.0.0.1, 所以不对外提供服务，如果你要对外提供服务改成0.0.0.0
-bind                       集群通讯地址



### Remark
- To learn more，until you use the registration service

### Reference
- [consul doc](https://kingfree.gitbook.io/consul/)
- [spring cloud consul](https://www.springcloud.cc/spring-cloud-consul.html)