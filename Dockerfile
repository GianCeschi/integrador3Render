
FROM amazoncorretto:21-alpine-jdk

WORKDIR /app

COPY target/Grupo20Integrador3-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "/app/app.jar"]
