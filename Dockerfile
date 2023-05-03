FROM openjdk:8-jdk-alpine
COPY target/JavaDigest-0.4.0-jar-with-dependencies.jar /usr/app/JavaDigest.jar
WORKDIR /usr/app
CMD ["java", "-jar", "JavaDigest.jar"]
