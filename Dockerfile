# 1단계: Maven으로 빌드
FROM maven:3.9.7-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn -B -DskipTests package

# 2단계: 가벼운 런타임 이미지
FROM eclipse-temurin:21-jre
WORKDIR /app
COPY --from=build /app/target/hello-actions-java-1.0.0.jar app.jar
CMD ["java", "-jar", "app.jar"]

