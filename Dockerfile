FROM node
MAINTAINER Mike Holloway <me@mikeholloway.co.uk>

EXPOSE 80

# install yarn
RUN curl -o- -L https://yarnpkg.com/install.sh | bash
ENV PATH "/root/.yarn/bin:$PATH"

# install project dependencies
ADD package.json /tmp/package.json
RUN cd /tmp && yarn

# setup workspace
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
ADD . /usr/src/app
RUN rm -rf /usr/src/app/node_modules
RUN ln -sfn /tmp/node_modules

# start the api
CMD ["yarn", "run", "docker-server"]
