# A Dockerfile to build mroonga.

FROM centos
MAINTAINER Kentaro Yoshida <y.ken.studio@gmail.com>

RUN yum -y localinstall http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN yum -y install git
RUN git clone https://github.com/y-ken/build_mysql_mroonga_rpm.git /tmp/
ENV HOME /root
WORKDIR /tmp/build_mysql_mroonga_rpm//
RUN sh provision.sh

CMD /bin/bash --login
