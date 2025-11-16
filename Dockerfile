FROM openjdk:17-jdk-alpine
WORKDIR /app
COPY target/Train-Ticket-Reservation-System.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
