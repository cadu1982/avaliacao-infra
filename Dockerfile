FROM node:14-alpine

WORKDIR /app

COPY package.json ./

RUN npm install

COPY index.js ./

EXPOSE 80

CMD ["npm", "start"]
