# Build stage: compile the Java application
FROM eclipse-temurin:21-jdk-jammy AS builder
WORKDIR /app
COPY HelloWebServer.java /app/
RUN javac HelloWebServer.java

# Runtime stage: use a smaller JRE image
FROM eclipse-temurin:21-jre-jammy AS runtime
WORKDIR /app
COPY --from=builder /app/*.class /app/

EXPOSE 8081
CMD ["java", "HelloWebServer"]


# Use an OpenJDK base image with JDK 21
# FROM eclipse-temurin:21-jdk-jammy

# # Set working directory inside the container
# WORKDIR /app

# # Copy source file into container
# COPY HelloWebServer.java /app/

# # Compile the Java source
# RUN javac HelloWebServer.java

# # Expose port for the web server
# EXPOSE 8080

# # Run the application
# CMD ["java", "HelloWebServer"]