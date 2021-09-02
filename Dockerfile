FROM node:14

RUN wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sh /dev/stdin version=5.26.0

# From https://calibre-ebook.com/download_linux
RUN apt-get update \
  && apt-get install -y \
  libgl1-mesa-glx \
  libxdamage1 \
  libnss3

COPY --chown=node:node . /home/node/app
WORKDIR /home/node/app
USER node
