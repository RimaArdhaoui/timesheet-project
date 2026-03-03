# Use official OpenJDK image
FROM eclipse-temurin:17-jre-jammy

# Set working directory
WORKDIR /app

# Copy Maven build files
COPY target/*.jar app.jar

# Expose application port
EXPOSE 8082

# Run the application
ENTRYPOINT ["java","-jar","app.jar"]
