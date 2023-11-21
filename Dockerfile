# Stage 1: Build the application
FROM jelastic/maven:3.9.5-openjdk-17 AS build
COPY . /app
WORKDIR /app
RUN mvn clean package -DskipTests

# Stage 2: Create a runtime image
FROM openjdk:17-jdk-slim
WORKDIR /app
EXPOSE 8080
COPY --from=build /app/target/demo-0.0.1-SNAPSHOT.jar /app/
CMD ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]