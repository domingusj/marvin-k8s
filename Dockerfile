FROM node:latest

RUN mkdir /rbot

COPY scripts /rbot/scripts
COPY external-scripts.json /rbot/external-scripts.json
COPY package.json /rbot/package.json
COPY bin /rbot/bin

WORKDIR /rbot

CMD ["./bin/hubot"]
