#start and stop a data volume container. volume persists even after container stops, must be removed with 'docker rm -v neo4j-data' to actually remove it
#this line was tested and works
#docker run -d --name neo4j-data -v /var/lib/neo4j-server/data shinymayhem/neo4j echo neo4j data container && touch /var/lib/neo4j-server/data/file && ls -lah /var/lib/neo4j-server/data #&& chown -R neo4j:neo4j /var/list/neo4j-server
#this line hopepfully works, because volume is specified in the dockerfile
docker run -d --name neo4j-data shinymayhem/neo4j echo neo4j data container
