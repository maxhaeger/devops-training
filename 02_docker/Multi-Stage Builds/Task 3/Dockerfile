### 3. Node.js App with Dependencies:

#Create a Dockerfile for a Node.js application
#(e.g., a simple Express.js server project).
#Use two stages to install the dependencies and
#start the application.

FROM node AS build
WORKDIR /opt/application
COPY package.json server.js /opt/application/
RUN npm install

FROM node:slim AS stage
WORKDIR /opt/application
COPY --from=build /opt/application/ ./
EXPOSE 3000
CMD [ "node", "server.js" ]