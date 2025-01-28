FROM node:22.13.1-slim

ARG START_ENV=""

COPY ./ /src/app
WORKDIR /src/app

RUN npm install
ENV ENV=${START_ENV}

CMD [ "npm", "run", "start"]