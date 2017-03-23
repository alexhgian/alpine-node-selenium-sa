FROM node:6-alpine

RUN apk add --no-cache xvfb \
    openjdk8-jre-base

RUN yarn global add selenium-standalone && selenium-standalone install
