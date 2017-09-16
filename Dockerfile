FROM node:8.5.0-alpine

RUN apk add --no-cache --virtual .build-deps \
        git

WORKDIR /app

ADD package.json /app/package.json
RUN npm install

ADD . /app

ENV HOST 0.0.0.0
ENV MONGO_HOST=mongodb://mongo/resque
EXPOSE 3000

CMD ["npm", "start"]
