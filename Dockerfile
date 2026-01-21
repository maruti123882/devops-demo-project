FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY target/devops-demo-1.0.jar app.jar

EXPOSE 8080

//CMD ["java", "-jar", "app.jar"]
CMD ["sh", "-c", "java -jar app.jar && tail -f /dev/null"]


