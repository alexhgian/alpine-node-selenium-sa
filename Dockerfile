FROM node:6-alpine

RUN apk add --no-cache xvfb \
    openjdk8-jre-base \
    python \
    gcc\
    g++\
    musl-dev\
    make

RUN yarn global add selenium-standalone \
    webdriverio \
    node-gyp \
    && selenium-standalone install

RUN cd root && mkdir code
