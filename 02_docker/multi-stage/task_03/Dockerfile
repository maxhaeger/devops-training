FROM node:16 as builder
WORKDIR /app
COPY package*.json ./
COPY index.js ./
RUN npm cache clean --force
RUN npm install


FROM node:14-slim
WORKDIR /app
COPY --from=builder /app .
EXPOSE 3000
CMD ["node", "index.js"]