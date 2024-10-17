FROM graalvm-jdk-21
COPY target/Grupo20Integrador3-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]