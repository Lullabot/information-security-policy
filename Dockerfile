FROM ubuntu:20.04 as node

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
COPY --chown=node:node . /home/node/app
RUN yarn install

FROM node
COPY install-calibre.sh .
RUN ./install-calibre.sh
COPY --from=knitter /home/node/app /home/node/app
USER node
RUN yarn build
RUN yarn pdf _book/security.pdf
