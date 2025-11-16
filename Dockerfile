<<<<<<< HEAD
# Use official Tomcat with JDK 17
FROM tomcat:10.1.13-jdk17-corretto

# Remove default webapps to keep container clean
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into Tomcat's webapps directory
COPY target/TrainBook-1.0.0-SNAPSHOT.war /usr/local/tomcat/webapps/app.war

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]

=======
FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

# Copy WAR file
COPY target/TrainBook-1.0.0-SNAPSHOT.war app.war

# Run WAR with embedded server
ENTRYPOINT ["java", "-jar", "app.war"]
>>>>>>> 413fa20afde7316b2dab118a1ba789d40fb89e9c
