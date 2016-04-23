FROM mhart/alpine-node
MAINTAINER Mike Holloway <me@mikeholloway.co.uk>

WORKDIR /DATA/code/api

EXPOSE 3000

CMD ["node", "server.js"]