# Use the Red Hat UBI9 OpenJDK 17 runtime image by digest
FROM registry.redhat.io/ubi9/openjdk-17@sha256:cdbd64ba1b7826d09bc180fa19aa6fbc09ddb5bff5e02b7e1351353bbabebb78

# Run as non-root for security
USER 1001

# Set working dir
WORKDIR /deploy

# Copy the built Spring Boot fat‑jar from your workspace
COPY target/*.jar app.jar

# Expose Spring Boot’s default port
EXPOSE 8080

# Launch the application
ENTRYPOINT ["java", "-jar", "app.jar"]
