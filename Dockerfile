FROM oberthur/docker-centos_i386

LABEL author="Tomasz Malinowski <t.malinowski@oberthur.com>"
LABEL version="docker-centos_i386-gcc"

RUN sudo yum -y update \
	&& sudo yum -y install gcc vim mc git epel-release

# clean up
  && rm -rf /var/cache/yum/* \
  && yum clean all
  
# cleaning docs
ONBUILD RUN rm -rf /usr/share/doc/* \
  && rm -rf /usr/share/man/* \
  && rm -rf /usr/share/info/* 
