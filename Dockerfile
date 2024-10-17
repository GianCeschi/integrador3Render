
# Fase 1: Construir el proyecto con Maven
FROM maven:3.9.6-amazoncorretto-21 AS build
WORKDIR /app

# Copiar el código fuente al contenedor
COPY target/Grupo20Integrador3-0.0.1-SNAPSHOT.jar app.jar

# Ejecutar la construcción de Maven (skipTests para evitar ejecutar tests)
RUN mvn clean package -DskipTests

# Fase 2: Crear la imagen final
FROM amazoncorretto:21-alpine
WORKDIR /app

# Copiar el JAR generado en la fase de construcción al contenedor final
COPY --from=build /app/target/mi-app.jar /app/mi-app.jar

# Exponer el puerto si aplica
EXPOSE 8080

# Ejecutar la aplicación Java
ENTRYPOINT ["java", "-jar", "/app/mi-app.jar"]

