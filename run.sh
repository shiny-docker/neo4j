#run a shell in the neo4j container, rather than starting the server. ptrace and apparmor args needed if wanting to run in background, because it uses 'lsof'
docker run -it --rm -p 7474 --cap-add SYS_PTRACE --security-opt apparmor:unconfined --volumes-from neo4j-data shinymayhem/neo4j /bin/bash
