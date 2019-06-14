#!/bin/sh
set -e

sudo pip install "pip==19.1.1"
sudo pip install wheel setuptools

if [ "$LANE" = "ios" ]; then
    brew update
    brew install yarn
    brew outdated node || brew upgrade node
    brew outdated yarn || brew upgrade yarn
elif [ "$LANE" = "android" ]; then
    node --version
    npm install -g yarn
fi
