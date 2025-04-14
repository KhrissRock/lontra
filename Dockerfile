FROM maven:3.9.9-eclipse-temurin-21-alpine as build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn package -DskipTests

FROM eclipse-temurin:21-alpine
WORKDIR /app
COPY --from=build targe/*.jar app.jar
EXPOSE 8080
#CMD ["java","-jar","app.jar"]
ENTRYPOINT ["java","-jar","app.jar"]
