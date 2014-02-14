# A Dockerfile to build mroonga.

FROM centos
MAINTAINER Kentaro Yoshida <y.ken.studio@gmail.com>

RUN yum -y install git
RUN git clone https://github.com/y-ken/build_mysql_mroonga_rpm.git /tmp/build_mysql_mroonga_rpm
RUN sh /tmp/build_mysql_mroonga_rpm/provision.sh

CMD /bin/bash --login
