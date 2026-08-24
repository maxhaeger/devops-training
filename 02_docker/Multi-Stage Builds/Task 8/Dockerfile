### 7. Debugging and Output:

#Add debugging instructions (e.g., print statements) to the code
#of your application.
#Show how you can make the output visible during the build process.

FROM python:3.10.21 AS build
WORKDIR /opt/app/
COPY hello.py /opt/app/
RUN python hello.py

FROM python:3.10.21-alpine3.24
WORKDIR /opt/app
COPY --from=build /opt/app/hello.py /opt/app/hello.py
EXPOSE 8080
CMD [ "python", "hello.py" ]


