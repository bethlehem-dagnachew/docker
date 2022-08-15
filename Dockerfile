FROM node:latest

WORKDIR /home/server

RUN npm install -g json-server

COPY db.json /home/server/db.json

ENTRYPOINT [ "json0server", "db.json" ]