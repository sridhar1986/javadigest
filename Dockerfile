#FROM openjdk:8-jdk-alpine
#COPY target/JavaDigest-0.4.0-jar-with-dependencies.jar /usr/app/JavaDigest.jar
#WORKDIR /usr/app
#CMD ["java", "-jar", "JavaDigest.jar"]

FROM maven:3.8.6-openjdk-11
COPY ./pom.xml ./pom.xml
COPY ./src ./src
RUN mvn dependency:go-offline -B
RUN mvn package
WORKDIR /usr/app
COPY target/JavaDigest-0.4.0-jar-with-dependencies.jar /usr/app/JavaDigest.jar
CMD ["java", "-jar", "JavaDigest.jar"]
