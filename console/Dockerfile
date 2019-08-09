ARG tinkerpop_version

FROM tinkerpop/gremlin-console:${tinkerpop_version}

ARG tinkerpop_version

USER root
RUN mkdir -p /.groovy
USER gremlin

COPY grapeConfig.xml /.groovy/

RUN mkdir setup && \
	echo ":install org.apache.tinkerpop neo4j-gremlin ${tinkerpop_version}" > setup/install1.groovy && \
	echo ":q" >> setup/install1.groovy && \
	echo ":plugin use tinkerpop.neo4j" > setup/install2.groovy && \
	echo ":q" >> setup/install2.groovy && \
	bin/gremlin.sh -i setup/install1.groovy && \
	bin/gremlin.sh -i setup/install2.groovy && \
	rm -rf setup
