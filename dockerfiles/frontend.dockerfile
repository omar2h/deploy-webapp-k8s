FROM node:14-alpine as builder

WORKDIR /app

COPY frontend/package.json .

RUN npm install

COPY frontend .

RUN npm run build

FROM nginx:1.19-alpine

COPY --from=builder /app/build /usr/share/nginx/html

COPY frontend/conf/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 3000

CMD [ "nginx", "-g", "daemon off;" ]