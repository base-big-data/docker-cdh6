FROM ccinn/centos-openjdk:latest

LABEL maintainer="Caiwenhui <471113744@qq.com>"

USER root

ENV CDH_VERSION 6.3.2

ADD cloudera-cdh6.repo /etc/yum.repos.d/
RUN rpm --import https://archive.cloudera.com/cdh6/$CDH_VERSION/redhat7/yum/RPM-GPG-KEY-cloudera;\
  yum makecache

WORKDIR /

CMD ["/bin/bash"]