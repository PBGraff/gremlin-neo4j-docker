#!/bin/sh

for TP_VERSION in "3.3.6" "3.3.7" "3.3.8" "3.4.0" "3.4.1" "3.4.2" "3.4.3"
do
	for TYPE in "console" "server"
	do
		docker build --tag=gremlin-neo4j-${TYPE}:${TP_VERSION} --build-arg tinkerpop_version=${TP_VERSION} ${TYPE}/
		docker tag gremlin-neo4j-${TYPE}:${TP_VERSION} pgraff85/gremlin-neo4j-${TYPE}:${TP_VERSION}
		docker push pgraff85/gremlin-neo4j-${TYPE}:${TP_VERSION}
	done
done
