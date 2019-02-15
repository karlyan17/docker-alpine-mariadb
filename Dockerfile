FROM alpine/base
RUN echo '@edgetesting http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories
RUN apk update \
    && apk upgrade \
    && apk add mariadb mariadb-client
COPY my.cnf /etc/
COPY entrypoint.sh /
CMD /entrypoint.sh
