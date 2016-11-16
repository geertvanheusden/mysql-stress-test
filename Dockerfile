FROM mysql:5.6

ENV MYSQL_ROOT_PASSWORD secret

ADD init.sql /docker-entrypoint-initdb.d
ADD my.cnf /etc/mysql/my.cnf

RUN apt-get update
RUN apt-get install -y sysbench 

ADD stress.sh /stress.sh
RUN chmod +x /stress.sh