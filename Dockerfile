FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD secret

ADD init.sql /docker-entrypoint-initdb.d

RUN apt-get update
RUN apt-get install -y sysbench 

ADD stress.sh /stress.sh
RUN chmod +x /stress.sh