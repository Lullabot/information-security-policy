FROM ubuntu:22.04

COPY --chown=node:node . /home/node/app
WORKDIR /home/node/app
RUN ./install-calibre.sh
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs yarn

USER node
