FROM node:10.16.0-alpine

WORKDIR /source/ci-cd-nodejs

COPY package.json /source/ci-cd-nodejs

RUN cd /source/ci-cd-nodejs && npm i --only=production

COPY . .

EXPOSE 3000
CMD ["sh", "-c", "node server.js"]