FROM openjdk:11 as builder
WORKDIR /app
COPY ./hello.java .
RUN javac hello.java

FROM openjdk:11
WORKDIR /app
COPY --from=builder /app/HelloWorld.class .  
CMD ["java", "HelloWorld"]