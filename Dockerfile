FROM node:16.13.1-alpine3.14

RUN apk update && apk add git
RUN git clone https://github.com/umami-software/umami
WORKDIR /umami

RUN yarn install

RUN yarn build
CMD ["yarn", "start"]
