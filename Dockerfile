# Imagen base de Java 17
FROM eclipse-temurin:17-jdk

# Crea una carpeta para la app dentro del contenedor
WORKDIR /app

# Copia el .jar generado por Maven
COPY target/*.jar app.jar

# Expón el puerto estándar de Spring Boot
EXPOSE 8090

# Comando para ejecutar el jar
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
