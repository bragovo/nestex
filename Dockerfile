FROM node:12

ENV NODE_ENV=production

WORKDIR /usr/src/app

COPY package.json ./

RUN yarn global add @nestjs/cli
RUN yarn install --frozen-lockfile
COPY . .
RUN yarn build

EXPOSE 3000

CMD [ "yarn", "start:prod" ]
