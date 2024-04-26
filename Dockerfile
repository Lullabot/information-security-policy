FROM ubuntu:24.04 as node

RUN apt-get update && apt-get install -y adduser
RUN adduser node
WORKDIR /home/node/app
COPY install-apt-deps.sh .
RUN ./install-apt-deps.sh
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get install -y nodejs yarn

# Allow this step to run in parallel to installing calibre
FROM node as knitter
COPY --chown=node:node package.json yarn.lock /home/node/app/
RUN yarn install

FROM node
COPY install-calibre.sh .
RUN ./install-calibre.sh
COPY --chown=node:node . /home/node/app
COPY --from=knitter --chown=node:node /home/node/app/node_modules /home/node/app/node_modules
USER node
RUN yarn build
RUN yarn pdf _book/security.pdf
