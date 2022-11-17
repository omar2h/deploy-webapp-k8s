FROM node:14-alpine

WORKDIR /app

COPY users-api/package.json .

RUN npm install

COPY users-api .

CMD ["node", "users-app.js"]