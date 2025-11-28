FROM node:20

WORKDIR /app

RUN npm install -g @quasar/cli

CMD ["bash", "-c", "npm install && quasar build && cp -r dist/spa/* /dist"]
