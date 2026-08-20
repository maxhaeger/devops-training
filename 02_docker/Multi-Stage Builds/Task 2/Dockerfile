## Task:

#Use Dockerbuild to create so-called Multi-Stage Builds. The files needed for this
#are in the [testfiles](./testfiles/) folder.
#Research what Multi-Stage Builds are, how they work, and why you should
#use them as opposed to normal builds.

### 2. Python Application:

#Create a Dockerfile for a simple Python application
#that prints a file. Use Multi-Stage Builds to optimize the
#Python image.

FROM python:3.10.21 as build
WORKDIR /opt/app/
COPY hello.py /opt/app/

FROM python:3.10.21-alpine3.24
WORKDIR /opt/app
COPY --from=build /opt/app/hello.py /opt/app/hello.py
EXPOSE 8080
CMD [ "python", "hello.py" ]


