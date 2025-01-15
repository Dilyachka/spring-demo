# Используем официальный образ OpenJDK в качестве базового
FROM openjdk:17-jdk-slim

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем файл JAR вашего Spring Boot приложения в контейнер
COPY target/spring-boot-docker.jar app.jar

# Открываем порт для приложения
EXPOSE 8080

# Команда для запуска Spring Boot приложения
ENTRYPOINT ["java", "-jar", "app.jar"]
