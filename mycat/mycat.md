## mycat

m1  mysql-bin.000003
m2  mysql-bin.000003

mysql -uroot -ppassword
show databases;


change master to master_host='192.18.0.5', master_user='gokuit', master_password='gokuit', master_port=3306, master_log_file='mysql-bin.000003', master_log_pos= 154, master_connect_retry=30;

- 监听端口请求情况
tcpdump -nnA port 9001

- 查看端口是否可用
telnet ip port

- 连接 mycat
mysql -uroot -ppassword -h127.0.0.1 -P8066 --default-auth=mysql_native_password
