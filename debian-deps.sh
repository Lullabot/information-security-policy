#!/bin/bash -e

apt-get update \
  && apt-get install -y \
  apt-transport-https \
  libgl1-mesa-glx \
  libxdamage1 \
  libxcomposite1 \
  libxrandr2 \
  libfreetype6 \
  libfontconfig1 \
  libxi6 \
  libnss3

hash yarn 2>/dev/null || (
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
  curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
  apt-get install -y nodejs yarn
)

# From https://calibre-ebook.com/download_linux
# Calibre is quite old in upstream Debian docker images, so pull latest
# (but pin because it's not an essential dependency).
wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sh /dev/stdin version=5.26.0
