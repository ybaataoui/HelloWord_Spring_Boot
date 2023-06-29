FROM openjdk:17-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ./target/my-maven-docker-project.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]

# syntax=docker/dockerfile:1

#FROM eclipse-temurin:17-jdk-jammy
#
#WORKDIR /app
#
#COPY .mvn/ .mvn
#COPY mvnw pom.xml ./
#RUN ./mvnw dependency:resolve
#
#COPY src ./src
#
#CMD ["./mvnw", "spring-boot:run"]

#FROM tomcat:10.1-alpine
#ADD *.war C:/Program Files/Apache Software Foundation/Tomcat 10.1/webapps/
#EXPOSE 8080
#CMD ["catalina.sh", "run"]

