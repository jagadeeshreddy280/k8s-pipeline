FROM openjdk:8-jdk-alpine
COPY /target/hello-world-0.3-SNAPSHOT.war  /Hello-world.war
EXPOSE 8022
ENTRYPOINT [ "java", "-jar", "Hello-world.war"]
