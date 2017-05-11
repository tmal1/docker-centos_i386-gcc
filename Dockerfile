FROM oberthur/docker-centos_i386

LABEL author="Tomasz Malinowski <t.malinowski@oberthur.com>"
LABEL version="docker-centos_i386-gcc"

RUN yum -y install yum-plugin-ovl
RUN yum -y update \
	&& yum -y install gcc vim mc git epel-release \

# clean up
	&& rm -rf /var/cache/yum/* \
	&& yum clean all
