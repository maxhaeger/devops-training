# Stage 1 Build
FROM node:14-alpine AS build 

WORKDIR /app

COPY package.json ./

RUN npm install

COPY . . 

# Stage 2 Runtime
FROM node:14-alpine

WORKDIR /app

COPY --from=build /app ./

EXPOSE 3000

CMD ["npm", "start"]