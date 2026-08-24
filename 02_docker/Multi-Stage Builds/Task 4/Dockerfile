### 4. Java Application:

#Try to create a Dockerfile for a simple Java application
#(e.g., a "Hello World" in Java).
#Use Multi-Stage Builds to make the build process more efficient.
FROM eclipse-temurin:26.0.1_8-jdk AS build
WORKDIR /usr/src/myapp
COPY . /usr/src/myapp
RUN javac hello.java

FROM eclipse-temurin:26.0.1_8-jre AS stage
WORKDIR /usr/src/myapp
COPY --from=build /usr/src/myapp ./
CMD [ "java", "HelloWorld" ]