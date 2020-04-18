FROM ruby:2.6.5-alpine

ENV BUNDLER_VERSION=2.0.2

RUN apk add --update --no-cache \
      binutils-gold \
      build-base \
      curl \
      file \
      g++ \
      gcc \
      git \
      less \
      libstdc++ \
      libffi-dev \
      libc-dev \ 
      linux-headers \
      libxml2-dev \
      libxslt-dev \
      libgcrypt-dev \
      make \
      netcat-openbsd \
      nodejs \
      openssl \
      pkgconfig \
      postgresql-dev \
      python \
      tzdata \
      yarn 

RUN gem install bundler -v 2.0.2
RUN bundle config build.nokogiri --use-system-libraries

COPY Gemfile* /tmp/
COPY package.json yarn.lock /tmp/

WORKDIR /tmp
RUN bundle install
RUN yarn install --check-files

ENV app /app
RUN mkdir $app
WORKDIR $app
ADD . $app
