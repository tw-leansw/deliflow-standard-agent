FROM gocd/gocd-agent:16.2.1
MAINTAINER YunLong <yunl.zheng@gmail.com>

WORKDIR /tmp

ADD https://archive.apache.org/dist/maven/maven-3/3.0.4/binaries/apache-maven-3.0.4-bin.zip /usr/local/
RUN cd /usr/local && unzip apache-maven-3.0.4-bin.zip && mv apache-maven-3.0.4 maven && rm -rf apache-maven-3.0.4-bin.zip
ENV PATH /usr/local/maven/bin:$PATH

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
CMD ["/sbin/my_init"]
