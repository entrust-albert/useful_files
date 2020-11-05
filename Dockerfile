FROM mariadb:latest

ADD sql/ /docker-entrypoint-initdb.d

ENV MYSQL_ROOT_PASSWORD a
ENV MYSQL_DATABASE entrust
ENV MYSQL_USER remoteuser
ENV MYSQL_PASSWORD a

EXPOSE 3306

CMD ["mysqld"]