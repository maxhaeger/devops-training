### 5. Optimize Build Size:

#Create a Dockerfile for an application of your choice and
#make sure to include only the necessary files and dependencies.
#Compare the size of the final image with that of a
#conventional build, copy the result here:

#|          Image          |   Size    |
#|   :-------------------  |  --------:|
#| python-app-slim:latest  |   80.5MB  |
#| python-app:latest       |   1.58GB  |


FROM python:3.10.21 AS build
WORKDIR /opt/app/
COPY hello.py /opt/app/

FROM python:3.10.21-alpine3.24
WORKDIR /opt/app
COPY --from=build /opt/app/hello.py /opt/app/hello.py
EXPOSE 8080
CMD [ "python", "hello.py" ]


