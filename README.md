docker-solr
===========

Docker Buildfile for Solr 3.6.2 

## build

docker build -t="rkrx/solr" .

## run 

docker run -i --name solr -p 8983:8983 rkrx/solr