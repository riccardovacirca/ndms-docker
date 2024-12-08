FROM node:20-alpine
RUN apk add --no-cache sqlite sqlite-dev git
WORKDIR /ndms
COPY package.json .
COPY ndms.js .
COPY .env .
RUN npm install
RUN npm install -g pm2
RUN npm install -g nodemon
EXPOSE 2310
CMD ["nodemon", "ndms.js"]