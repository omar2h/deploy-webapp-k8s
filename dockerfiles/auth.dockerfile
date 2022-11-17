FROM node

WORKDIR /app

COPY auth-api/package.json .

RUN npm install

COPY auth-api .

CMD ["node", "auth-app.js"]