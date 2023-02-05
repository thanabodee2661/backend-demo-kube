# Use an official Java image as the base image
FROM openjdk:17-jdk-slim-buster

# Copy the source code to the container
COPY . /app

# Set the working directory in the container to /app
WORKDIR /app

# Build the Spring Boot application
RUN #./mvnw package

# Copy the jar file from the host to the container
COPY target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","app.jar"]

