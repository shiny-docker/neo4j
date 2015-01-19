FROM shinymayhem/base

RUN \
	apt-get install -y software-properties-common && \
	echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
	add-apt-repository -y ppa:webupd8team/java && \
	apt-get update && \
	apt-get install -y oracle-java7-installer && \
	rm -rf /var/lib/apt/lists/* && \
	rm -rf /var/cache/oracle-jdk7-installer
	wget http://neo4j.com/artifact.php?name=neo4j-community-2.1.6-unix.tar.gz && \
	tar -zxvf neo4j-community-2.1.6-unix.tar.gz && \
	rm neo4j-community-2.1.6-unix.tar.gz
