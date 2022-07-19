#!/bin/bash -e

# Dependencies gathered by running `docker run --rm -it ubuntu:20.04 bash` and
# then running `apt update && apt install calibre` and looking at the list of
# packages.
# libopengl0 is needed specifically for tugboat as it's debian.
apt-get update \
&& DEBIAN_FRONTEND=noninteractive apt-get install -y \
  fonts-liberation \
  imagemagick \
  libopengl0 \
  libjpeg-turbo-progs \
  libjs-mathjax \
  libjxr-tools \
  optipng \
  poppler-utils \
  python3 \
  python3-apsw \
  python3-bs4 \
  python3-chardet \
  python3-chm \
  python3-css-parser \
  python3-cssselect \
  python3-cssutils \
  python3-dateutil \
  python3-dbus \
  python3-feedparser \
  python3-html2text \
  python3-html5-parser \
  python3-html5lib \
  python3-lxml \
  python3-markdown \
  python3-mechanize \
  python3-msgpack \
  python3-netifaces \
  python3-pil \
  python3-pkg-resources \
  python3-pygments \
  python3-pyparsing \
  python3-pyqt5 \
  python3-pyqt5.qtsvg \
  python3-pyqt5.qtwebengine \
  python3-regex \
  python3-routes \
  python3-zeroconf \
  xdg-utils \
  wget

wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sh /dev/stdin version=6.0.0
rm calibre-tarball.*
