FROM centos:7
MAINTAINER brian.zhou "brian.zhou@huolala.cn"
RUN rpm -ivh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm
RUN yum install -y nginx
EXPOSE 80
