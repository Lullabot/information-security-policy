FROM ubuntu:20.04 as node

RUN adduser node
COPY --chown=node:node . /home/node/app
WORKDIR /home/node/app
RUN ./install-apt-deps.sh
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs yarn

# Allow this step to run in parallel to installing calibre
FROM node as knitter
RUN yarn install

FROM node
RUN ./install-calibre.sh
COPY --from=knitter /home/node/app/node_modules node_modules
USER node
RUN yarn build
RUN yarn pdf _book/security.pdf
