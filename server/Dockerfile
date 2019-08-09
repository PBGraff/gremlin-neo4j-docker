ARG tinkerpop_version

FROM tinkerpop/gremlin-server:${tinkerpop_version}

ARG tinkerpop_version

USER root
RUN mkdir -p /.groovy
USER gremlin

COPY grapeConfig.xml /.groovy/

RUN bin/gremlin-server.sh install org.apache.tinkerpop neo4j-gremlin ${tinkerpop_version}
