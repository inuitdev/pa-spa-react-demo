FROM maven

RUN mkdir -p /app/src
WORKDIR /app
COPY ./src /app/src
COPY pom.xml /app

RUN mvn -T 1C clean install
