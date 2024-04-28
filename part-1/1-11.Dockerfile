# use Java 8 as base image
FROM amazoncorretto:8

# copy project files to the container
WORKDIR /usr/src/app
COPY ./spring-example-project .

# expose port 8080
EXPOSE 8080

# build the project
RUN chmod +x mvnw
RUN ./mvnw package

# run the application
CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]