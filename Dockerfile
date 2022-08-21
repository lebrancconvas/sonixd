FROM node:14.18-alpine

RUN apk update
WORKDIR /app

COPY package.json ./
COPY yarn.lock ./

RUN apk install --no-cache git openssh
RUN yarn install --scripts-prepend-node-path

COPY ./ ./

EXPOSE 3000

CMD ["yarn", "start"]
