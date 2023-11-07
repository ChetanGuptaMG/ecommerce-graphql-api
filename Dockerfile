FROM node:lts-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install --f

COPY . .

EXPOSE 1000

CMD ["npm","start"]
