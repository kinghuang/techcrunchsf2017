FROM node:8.5.0-alpine

RUN apk add --no-cache --virtual .build-deps \
        git

WORKDIR /app

ADD package.json /app/package.json
RUN npm install

ADD . /app

EXPOSE 3000

CMD ["npm", "start"]
