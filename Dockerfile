FROM node:16

WORKDIR /usr/src/app

COPY DEV-W1 .

RUN npm install

ENV PORT=27017
ENV MONGO_URL="mongodb://mongo:27017/devops"
ENV HOST="mongodb"

EXPOSE $PORT

CMD ["npm", "start"]
