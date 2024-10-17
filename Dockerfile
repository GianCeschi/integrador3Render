FROM salindakarunarathna/gt-graalvm-jdk21-mvn3.9.6
COPY target/Grupo20Integrador3-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]