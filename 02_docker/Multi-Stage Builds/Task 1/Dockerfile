FROM python:latest AS build
WORKDIR /usr/local/app
COPY hello.py /usr/local/app/

FROM python:3.10.21-alpine3.24
WORKDIR /usr/local/app
COPY --from=build /usr/local/app/hello.py /usr/local/app/hello.py
EXPOSE 8080
CMD [ "python", "hello.py"]