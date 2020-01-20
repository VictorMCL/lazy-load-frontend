FROM node:lts-alpine

ENV API_SERVER=http://localhost:9000
EXPOSE 4200
WORKDIR /app
COPY . .
RUN npm install

ENTRYPOINT ["npm","run","start"]