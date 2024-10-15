
FROM openjdk:17-slim AS build
WORKDIR /app
COPY HelloWorld.java .
RUN javac HelloWorld.java


FROM openjdk:17-slim
WORKDIR /app
COPY --from=build /app/HelloWorld.class .

# Uygulamayı çalıştırın
CMD ["java", "HelloWorld"]
