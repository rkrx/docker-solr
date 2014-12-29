FROM ubuntu:14.04

RUN apt-get update
RUN apt-get -y install openjdk-7-jdk
RUN apt-get -y install curl

WORKDIR /opt
RUN curl -s https://archive.apache.org/dist/lucene/solr/3.6.2/apache-solr-3.6.2.tgz > apache-solr.tgz
RUN tar xfvz apache-solr.tgz
#RUN rm apache-solr.tgz

EXPOSE 8983

WORKDIR /opt/apache-solr/example
RUN ls -la /opt/apache-solr-3.6.2


#CMD java -jar start.jar
