#start and stop a data volume container. volume persists even after container stops, must be removed with 'docker rm -v neo4j-data' to actually remove it
docker run -d --name neo4j-data -v /var/lib/neo4j-server/data shinymayhem/neo4j echo neo4j data container #&& chown -R neo4j:neo4j /var/list/neo4j-server
