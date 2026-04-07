FROM                 docker.io/maven:3.9-amazoncorretto-21-alpine As build
RUN                  mkdir /app
WORKDIR              /app
COPY                 pom.xml /app/
COPY                 src/  /app/src/
RUN                  mvn clean package

FROM               docker.io/openjdk:11-ea-9-jre-slim
WORKDIR            /app
COPY              --from=build /app/target/shipping.jar /app/shipping.jar
CMD                ["java", "-jar", "shipping.jar"]

