FROM node

RUN mkdir /app
COPY ./flatris/ /app/
WORKDIR /app
RUN yarn install && yarn test && yarn build
EXPOSE 3000
CMD yarn start
