FROM openjdk:11-jdk-alpine
ARG WAR_FILE=target/*.war
COPY ${WAR_FILE} app.war
ENTRYPOINT ["java", "-war", "/app.war"]
