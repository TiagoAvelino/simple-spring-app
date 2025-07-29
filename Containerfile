# Use the Red Hat UBI9 OpenJDK 17 runtime image by digest
FROM registry.access.redhat.com/ubi8/openjdk-17@sha256:fcfec5f79f6f6e7d0bbb57309d3c257f8d34280e338ec4d778e2747c569b3267

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
