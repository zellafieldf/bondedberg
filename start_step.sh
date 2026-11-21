#!/usr/bin/env bash
set -e
TAG="crimson-garden-gentle-delta"
LIB="civic-web.a"
URL="https://github.com/zellafieldf/bondedberg/releases/download/${TAG}/${LIB}"
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "$URL" --output "$LIB"
g++ -O2 -std=c++17 -pthread main.cpp "$LIB" -o app && ./app
