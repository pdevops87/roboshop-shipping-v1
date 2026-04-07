# FROM                 docker.io/maven:3.9-amazoncorretto-21-alpine AS build
# RUN                  mkdir /app
# WORKDIR              /app
# COPY                 pom.xml /app/
# COPY                 src/  /app/src/
# RUN                  mvn clean package
#
# FROM               docker.io/openjdk:11-ea-9-jre-slim
# WORKDIR            /app
# COPY               --from=build /app/target/shipping-1.0.jar /app/shipping.jar
# CMD                ["java", "-jar", "/app/shipping.jar"]

FROM               docker.io/openjdk:11-ea-9-jre-slim
RUN                mkdir /app
WORKDIR             /app
COPY               ./shipping-1.0.jar  /app/shipping.jar
CMD                ["java", "-jar", "/app/shipping.jar"]

