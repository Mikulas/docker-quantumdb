FROM openjdk:8-jre-alpine

ARG version
ADD https://github.com/quantumdb/quantumdb/releases/download/quantumdb-$version/quantumdb-cli-$version.jar /opt/quantum/quantumdb-cli.jar

ENTRYPOINT ["java", "-jar", "/opt/quantum/quantumdb-cli.jar"]
