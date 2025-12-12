FROM ubuntu:24.04

RUN apt-get update && apt-get install -y \
    ruby-full \
    ruby-dev \
    build-essential \
    zlib1g-dev \
    libyaml-dev \
    pkg-config \
    ruby-bundler \
    git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
RUN git clone https://github.com/urbanadventurer/WhatWeb.git .
RUN bundle install \
    && make install

ENTRYPOINT ["whatweb"]
