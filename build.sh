#!/bin/bash -e

yarn install
yarn build
yarn pdf _book/security.pdf
