#!/bin/bash -e

apt-get update \
&& apt-get install -y \
  apt-transport-https \
  curl \
  gnupg \
  libgl1-mesa-glx \
  libegl1 \
  libxdamage1 \
  libxcomposite1 \
  libxrandr2 \
  libfreetype6 \
  libfontconfig1 \
  libopengl0 \
  libxi6 \
  libnss3 \
  python \
  wget

wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sh /dev/stdin version=6.0.0
rm calibre-tarball.*

hash yarn 2>/dev/null || (
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
  curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
  apt-get install -y nodejs yarn
)
