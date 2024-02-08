FROM node:20-alpine

RUN apk add --no-cache git

RUN git clone --depth=1 https://github.com/rorb95/frapp.git

WORKDIR /frapp

RUN npm install

CMD npm start

EXPOSE 8080
