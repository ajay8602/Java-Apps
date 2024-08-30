# Use an official OpenJDK 17 runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the target directory of your Maven build
COPY target/hello-world-1.0-SNAPSHOT.jar /app/hello-world.jar

# Expose the port your application will run on (optional, if your application uses a specific port)
# EXPOSE 8080

# Set the entry point to run the JAR file
ENTRYPOINT ["java", "-jar", "hello-world.jar"]

