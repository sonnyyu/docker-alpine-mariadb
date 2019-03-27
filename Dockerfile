FROM yobasystems/alpine:3.9.2-amd64

MAINTAINER Sonny Yu <sonnyyuirm@gmail.com>

RUN apk add --no-cache mariadb mariadb-client mariadb-server-utils pwgen tzdata && \
    rm -f /var/cache/apk/* /tmp/*
    
ENV  TZ=America/Los_Angeles

ADD files/run.sh /scripts/run.sh
RUN mkdir /docker-entrypoint-initdb.d && \
    mkdir /scripts/pre-exec.d && \
    mkdir /scripts/pre-init.d && \
    chmod -R 755 /scripts

EXPOSE 3306

VOLUME ["/var/lib/mysql"]

ENTRYPOINT ["/scripts/run.sh"]
