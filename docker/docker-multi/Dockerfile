FROM node:alpine AS base
WORKDIR /app
COPY package.json .

FROM base AS dependencies
RUN npm set progress=false && npm config set depth 0
RUN npm install --only=production 
RUN cp -R node_modules prod_node_modules
RUN npm install

FROM dependencies AS test
RUN npm install eslint
COPY . .
RUN npm run lint

FROM base AS release
COPY --from=dependencies /app/prod_node_modules ./node_modules
COPY server.js .
COPY public public
EXPOSE 8080
CMD npm start

