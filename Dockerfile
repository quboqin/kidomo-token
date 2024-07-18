FROM node:20.15.1-alpine
RUN npm install -g npm
WORKDIR /var/www/token
ADD . /var/www/token
RUN npm install
CMD npm run build && npm run start