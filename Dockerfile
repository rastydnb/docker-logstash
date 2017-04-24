FROM docker.elastic.co/logstash/logstash:5.3.0

RUN logstash-plugin install x-pack && apt-get update && apt-get install vim
RUN rm -f /usr/share/logstash/pipeline/logstash.conf
ADD pipeline/ /usr/share/logstash/pipeline/
ADD config/ /usr/share/logstash/config/


