FROM node:12

ENV NODE_ENV=production

WORKDIR /usr/src/app

COPY yarn.lock ./

RUN yarn install --frozen-lockfile

COPY . .

EXPOSE 3000

CMD [ "yarn", "start:prod" ]
