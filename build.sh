#!/bin/bash

# Set variables for our internal Sonatype Nexus repository server
NEXUS_USERNAME=admin
NEXUS_PASSWORD=admin123
NEXUS_SERVER=18.220.27.185
NEXUS_PORT=8081
NEXUS_REPO=repository/maven-snapshots
NEXUS_URL=http://${NEXUS_USERNAME}:${NEXUS_PASSWORD}@${NEXUS_SERVER}:${NEXUS_PORT}/${NEXUS_REPO}

# Clean, puild and deploy build artifact to internal
# nexus artifact repository (18.220.27.185:8081) to the
# maven-snapshots repo
#mvnw clean install deploy -Dmaven.test.skip=true
#mvnw clean install deploy -Dmaven.test.skip=true -DrepositoryId=nexus -pl :spring-cloud-config-server-cyglass -am

# Clean, Build and Deploy spring-cloud-config-server-cyglass build artifact to
# internal nexus artifact repository (18.220.27.185:8081) into maven-snapshots
mvnw clean install deploy:deploy-file -DgroupId=com.cyglass -DartifactId=config \
 -Dversion=2.2.0.BUILD-SNAPSHOT -DgeneratePom=true -Dpackaging=jar \
 -DrepositoryId=nexus \
 -Durl=${NEXUS_URL} \
 -Dfile=spring-cloud-config-server/target/spring-cloud-config-server-cyglass-2.2.0.BUILD-SNAPSHOT.jar \
 -Dmaven.test.skip=true -pl :spring-cloud-config-server-cyglass -am
