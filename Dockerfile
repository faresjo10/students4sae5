FROM eclipse-temurin:17-jdk-alpine

# Créer un dossier dans le container
WORKDIR /app

# Copier le JAR généré par Maven
COPY target/*.jar app.jar

# Exposer le port utilisé par Spring
EXPOSE 8080

# Lancer l'application
ENTRYPOINT ["java", "-jar", "app.jar"]
