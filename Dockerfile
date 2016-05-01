FROM mhart/alpine-node
MAINTAINER Mike Holloway <me@mikeholloway.co.uk>

WORKDIR /DATA/code/api

RUN npm install supervisor -g

EXPOSE 80

CMD ["supervisor", "--harmony", "server.js"]