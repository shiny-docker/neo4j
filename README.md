##About
minimal neo4j installation with oracle jdk 7

##Instructions
###Setup
*Run the init.sh script to get the data volume set up. This is a one time step, unless the data volume has been manually removed
*Run the start.sh script to get the container running with access to the db on port 7474, and expose that port on the host
###Restart
*If the container is currently running, run the restart.sh script to shut down, remove, recreate and restart the container
###Stop
*Run `docker stop neo4j && docker rm neo4`
###Notes
*At some point, a script will be made to start the server without exposing any ports on the host. It will be either linked to the dal container internally, or set up to expose the port through another container, using the ambassador pattern.

