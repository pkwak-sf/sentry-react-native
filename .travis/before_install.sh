#!/bin/sh
set -e

pip install "pip==19.1.1"

if [ "$LANE" = "ios" ]; then
    brew update
    brew install yarn
    brew outdated node || brew upgrade node
    brew outdated yarn || brew upgrade yarn
elif [ "$LANE" = "android" ]; then
    node --version
    npm install -g yarn
fi
