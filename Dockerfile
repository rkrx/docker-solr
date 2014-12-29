FROM ubuntu:14.04

RUN apt-get update
RUN apt-get -y install openjdk-7-jdk wget

WORKDIR /opt
RUN ls -la
#RUN wget --help
RUN wget -q -o=apache-solr.tgz https://archive.apache.org/dist/lucene/solr/3.6.2/apache-solr-3.6.2.tgz
RUN tar xfvz apache-solr.tgz
RUN rm apache-solr.tgz
RUN ls -la

EXPOSE 8983

WORKDIR /opt/apache-solr/example
CMD java -jar start.jar
