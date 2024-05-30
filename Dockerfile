
FROM node:22.2.0-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --only=production

COPY . .

EXPOSE 8080

ENTRYPOINT ["npm","start"]