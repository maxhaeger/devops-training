FROM openjdk:latest as builder
WORKDIR /app
COPY ./hello.java .
COPY ./Manifest.txt .
RUN javac hello.java
RUN jar cvfm app.jar Manifest.txt *.class

FROM openjdk:latest
WORKDIR /app
COPY --from=builder /app .
CMD ["java", "-jar", "app.jar"]