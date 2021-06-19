FROM node:12.18.1

# App diretory
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

# Code app file code
COPY . .

EXPOSE 8080

CMD ["node", "index.js"]