FROM node:12

WORKDIR /app

ADD ./package.json /app

RUN npm install

COPY ./src /app

RUN npm build

EXPOSE 8200

CMD [ "npm", "run", "prod" ]
