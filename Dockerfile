FROM logstash:latest

RUN apt-get update && apt-get install -y netcat

COPY config/logstash.conf /etc/logstash/conf.d/logstash.conf
RUN chmod 777 /etc/logstash/conf.d/logstash.conf
