FROM centos
MAINTAINER Uchio KONDO <udzura@udzura.jp>

WORKDIR /root
RUN yum -y install wget
RUN wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN rpm -Uvh epel-release-6*.rpm
RUN yum -y update

RUN yum -y install \
    make gcc zlib-devel openssl-devel readline-devel \
    ncurses-devel gdbm-devel db4-devel libffi-devel \
    tk-devel libyaml-devel git
RUN git clone https://github.com/sstephenson/ruby-build.git
RUN sh ruby-build/install.sh
RUN /usr/local/bin/ruby-build 2.1.1 /usr/local/ruby-2.1.1
CMD /usr/local/ruby-2.1.1/bin/ruby -v