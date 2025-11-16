FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

# Copy WAR file
COPY target/TrainBook-1.0.0-SNAPSHOT.war app.war

# Run WAR with embedded server
ENTRYPOINT ["java", "-jar", "app.war"]
