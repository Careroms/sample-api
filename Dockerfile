FROM node:22.13.1-slim

COPY ./ /src/app
WORKDIR /src/app

RUN npm install

CMD [ "npm", "run", "start" ]