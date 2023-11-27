# Stage 1: Build the application
FROM maven:3.9.5-eclipse-temurin-17-alpine AS build
COPY . /app
WORKDIR /app
RUN ./mvnw clean package -DskipTests

# Stage 2: Create a runtime image
FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
EXPOSE 8080
COPY --from=build /app/target/demo-*-SNAPSHOT.jar /app/demo.jar
CMD ["java", "-jar", "demo.jar"]