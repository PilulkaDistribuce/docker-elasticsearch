FROM elasticsearch:latest

RUN bin/elasticsearch-plugin install analysis-icu
RUN bin/elasticsearch-plugin install x-pack
COPY ./config /usr/share/elasticsearch/config
COPY ./backup /usr/share/elasticsearch/backup

WORKDIR "/usr/share/elasticsearch"
