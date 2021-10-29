FROM ubuntu:16.04

RUN apt-get update && apt-get -y install openjdk-8-jre-headless apt-utils curl

WORKDIR /opt
RUN curl -s https://archive.apache.org/dist/lucene/solr/3.6.2/apache-solr-3.6.2.tgz > apache-solr.tgz
RUN tar xfvz apache-solr.tgz
RUN rm apache-solr.tgz

EXPOSE 8983

WORKDIR /opt/apache-solr-3.6.2/example
RUN rm solr/conf/schema.xml
ADD schema.xml /opt/apache-solr-3.6.2/example/solr/conf/schema.xml

CMD java -jar start.jar > /dev/null 2>&1
