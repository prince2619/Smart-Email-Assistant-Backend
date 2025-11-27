FROM eclipse-temurin:23-jdk

WORKDIR /app

COPY . .

# ✅ Give execute permission to mvnw
RUN chmod +x mvnw

RUN ./mvnw clean package -DskipTests

EXPOSE 8080

CMD ["java", "-jar", "target/email-writer-sb-0.0.1-SNAPSHOT.jar"]

