FROM openjdk:8-jre-alpine

ARG version
ADD https://github.com/quantumdb/quantumdb/releases/download/quantumdb-$version/quantumdb-cli-$version.jar \
    /opt/quantum/quantumdb-cli.jar
ADD https://jdbc.postgresql.org/download/postgresql-42.1.4.jar \
    /opt/quantum/lib/jdbc-postgres.jar

ENV CLASSPATH "/opt/quantum/lib/jdbc-postgres.jar:$CLASSPATH"

ENTRYPOINT ["java", "-jar", "/opt/quantum/quantumdb-cli.jar"]
