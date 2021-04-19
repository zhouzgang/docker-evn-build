#Mycat
FROM java

# RUN yum install -y java-1.8.0-openjdk-devel.x86_64 gettext nmap-ncat openssl telnet \
#  && yum clean all -y

#Mycat版本
ENV MYCAT_VERSION 1.6.7.3

ENV MYCAT_HOME /home/mycat

ADD Mycat-server-1.6.7.5-linux.tar.gz /home

RUN chmod u+x ${MYCAT_HOME}

EXPOSE 8066 9066

ENV PATH=$PATH:$MYCAT_HOME/bin

WORKDIR ${MYCAT_HOME}/bin

CMD ["./mycat","console"]
