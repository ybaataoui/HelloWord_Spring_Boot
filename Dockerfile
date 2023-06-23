#FROM openjdk:17
#ADD target/my-maven-docker-project.jar my-maven-docker-project.jar
#ENTRYPOINT ["java", "-jar","my-maven-docker-project.jar"]
#EXPOSE 8080

# syntax=docker/dockerfile:1

FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:resolve

COPY src ./src

CMD ["./mvnw", "spring-boot:run"]

