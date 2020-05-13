FROM ruby:2.7.1-alpine3.11

WORKDIR /data/converter

COPY ./convert-otf-to-ttf-and-fix-cmap ./make.ash ./

RUN apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing \
    fontforge \
    mesa-dri-intel \
    mesa-gl \
    ttf-dejavu \
    unifont \
 && apk add --no-cache libxml2 libxslt \
 && apk add --no-cache --virtual .build make g++ libxml2-dev libxslt-dev \
 && pip3 install --upgrade pip \
 && pip3 install fonttools \
 && bundle config build.nokogiri --use-system-libraries \
 && bundle install \
 && apk del .build
