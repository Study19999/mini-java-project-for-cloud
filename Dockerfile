# Stage 1: Build the application
FROM eclipse-temurin:17-jdk-alpine AS build
COPY . /app
WORKDIR /app
RUN ./mvnw clean package -DskipTests

# Stage 2: Create a runtime image
FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
EXPOSE 8080
COPY --from=build /app/target/demo-0.0.1-SNAPSHOT.jar /app/
CMD ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]