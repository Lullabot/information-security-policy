FROM node:14

COPY --chown=node:node . /home/node/app
WORKDIR /home/node/app
RUN ./debian-deps.sh

USER node
