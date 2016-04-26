FROM docker pull gocd/gocd-agent:16.2.1
MAINTAINER YunLong <yunl.zheng@gmail.com>

WORKDIR /tmp

ADD https://archive.apache.org/dist/maven/maven-3/3.0.4/binaries/apache-maven-3.0.4-bin.zip /usr/local/maven

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
CMD ["/sbin/my_init"]
