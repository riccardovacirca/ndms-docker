FROM node:20-alpine
RUN apk add --no-cache sqlite sqlite-dev git
WORKDIR /service
COPY package.json .
COPY ndms.js .
COPY .env .
COPY install-module.sh .
COPY uninstall-module.sh .
RUN npm install
RUN npm install -g nodemon
EXPOSE 2310
CMD ["nodemon", "main.js"]
