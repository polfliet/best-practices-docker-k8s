FROM node:alpine
WORKDIR /app
COPY package.json .
RUN npm install --prod
COPY server.js .
COPY public public
EXPOSE 8080
CMD npm start

