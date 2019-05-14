FROM docker.elastic.co/elasticsearch/elasticsearch:5.6.16

RUN bin/elasticsearch-plugin install analysis-icu
RUN bin/elasticsearch-plugin remove x-pack
RUN bin/elasticsearch-plugin install x-pack
COPY ./config /usr/share/elasticsearch/config
COPY ./backup /usr/share/elasticsearch/backup

WORKDIR "/usr/share/elasticsearch"
