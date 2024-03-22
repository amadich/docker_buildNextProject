FROM node:20-alpine

WORKDIR /app

COPY package*.json ./

RUN apk add --no-cache libc6-compat

RUN npm install

COPY . .

RUN npm run build

EXPOSE 5000