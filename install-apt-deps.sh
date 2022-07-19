#!/bin/bash -e

apt-get update \
&& DEBIAN_FRONTEND=noninteractive apt-get install -y \
  apt-transport-https \
  curl \
  gnupg
