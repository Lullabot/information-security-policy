FROM ubuntu:24.04 as handbook

RUN apt-get update && apt-get install -y adduser
RUN adduser node
WORKDIR /home/node/app
COPY install-apt-deps.sh .
RUN ./install-apt-deps.sh
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN curl -sL https://deb.nodesource.com/setup_20.x | bash -
RUN apt-get install -y nodejs yarn

# Allow this step to run in parallel to installing calibre
FROM node:20 as knitter
RUN apt-get update && apt-get install -y git
COPY --chown=node:node package.json yarn.lock /home/node/app/
WORKDIR /home/node/app
RUN yarn install

FROM handbook
COPY install-calibre.sh .

RUN mv /etc/apt/apt.conf.d/docker-clean /etc/apt/docker-clean-disabled
RUN --mount=type=cache,target=/var/cache/apt,sharing=locked \
  --mount=type=cache,target=/var/lib/apt,sharing=locked \
  ./install-calibre.sh
RUN mv /etc/apt/docker-clean-disabled /etc/apt/apt.conf.d/docker-clean

COPY --chown=node:node . /home/node/app
COPY --from=knitter --chown=node:node /home/node/app/node_modules /home/node/app/node_modules
USER node
RUN yarn build
RUN yarn pdf _book/security.pdf
