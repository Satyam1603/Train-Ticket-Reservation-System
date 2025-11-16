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

