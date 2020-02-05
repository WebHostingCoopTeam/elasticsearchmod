FROM docker.elastic.co/elasticsearch/elasticsearch:7.5.2
# In the future we might use this form, but for now hardcoding in the above statement
#ARG elasticsearch_version
#FROM docker.elastic.co/elasticsearch/elasticsearch:${elasticsearch_version}

RUN bin/elasticsearch-plugin install --batch repository-gcs
RUN bin/elasticsearch-plugin install --batch repository-s3
RUN bin/elasticsearch-plugin install --batch repository-hdfs
RUN bin/elasticsearch-plugin install --batch repository-azure
