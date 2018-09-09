FROM elasticsearch:latest

RUN bin/elasticsearch-plugin install analysis-icu
COPY ./config /usr/share/elasticsearch/config
COPY ./backup /usr/share/elasticsearch/backup

WORKDIR "/usr/share/elasticsearch"
