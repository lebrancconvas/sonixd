FROM node:14.18-alpine

WORKDIR /app

COPY package.json /app/package.json

RUN yarn install

COPY . .

CMD ["yarn", "start"]
