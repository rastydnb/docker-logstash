FROM logstash:latest

COPY config/logstash.conf /etc/logstash/conf.d/logstash.conf
RUN chmod 777 /etc/logstash/conf.d/logstash.conf

#RUN plugin install logstash-input-rethinkdb
##
