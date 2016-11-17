FROM mysql:5.6

ENV MYSQL_ROOT_PASSWORD secret

RUN apt-get update
RUN apt-get install -y sysbench 

ADD init.sql /docker-entrypoint-initdb.d
ADD my.cnf /etc/mysql/my.cnf

ADD stress.sh /docker-entrypoint-initdb.d
RUN chmod +x /docker-entrypoint-initdb.d/stress.sh