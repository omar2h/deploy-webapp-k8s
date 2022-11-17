FROM node:14-alpine

WORKDIR /app

COPY tasks-api/package.json .

RUN npm install

COPY tasks-api .

CMD ["node", "tasks-app.js"]