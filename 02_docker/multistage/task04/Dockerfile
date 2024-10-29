# Stage 1
FROM openjdk:17-jdk-alpine AS build

WORKDIR /app

COPY hello.java .

RUN javac hello.java

# Stage 2

FROM openjdk:17-jdk-alpine

WORKDIR /app

COPY --from=build /app/HelloWorld.class .

CMD ["java", "HelloWorld"]