FROM ubuntu:20.04

COPY --chown=node:node . /home/node/app
WORKDIR /home/node/app
RUN ./install-calibre.sh

USER node
