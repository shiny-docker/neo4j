#remove the old container
docker stop neo4j
docker rm neo4j
#start the neo4j server in the foreground
docker run -d --volumes-from neo4j-data --name neo4j shinymayhem/neo4j
