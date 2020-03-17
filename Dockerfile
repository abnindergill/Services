FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/HelloWorld.jar
COPY ${JAR_FILE} hello-world.jar
ENTRYPOINT ["java","-jar","/hello-world.jar"]
