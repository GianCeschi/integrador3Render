# Etapa de construcción (Build Stage)
FROM amazoncorretto:21-alpine-jdk AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Etapa final (Final Stage)
FROM amazoncorretto:21-jdk

WORKDIR /app
COPY --from=build /app/target/Grupo20Integrador3-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "/app/app.jar", "--debug"]