FROM ubuntu:14.04

RUN apt-get update
RUN apt-get -y install openjdk-7-jdk wget

RUN cd /opt
RUN wget https://archive.apache.org/dist/lucene/solr/3.6.2/apache-solr-3.6.2.tgz
RUN tar xfvz apache-solr-3.6.2.tgz
RUN rm apache-solr-3.6.2.tgz

WORKDIR /opt/apache-solr-3.6.2/example
CMD java -jar start.jar