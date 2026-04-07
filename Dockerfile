FROM                 docker.io/maven:3.9-amazoncorretto-21-alpine
RUN                  mkdir /app
WORKDIR              /app
COPY                 pom.xml /app/
COPY                 src/  app/src/
RUN                  mvn clean package

