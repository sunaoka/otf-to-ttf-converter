FROM ruby:2.7.5-alpine3.15

WORKDIR /data/converter

COPY ./convert-otf-to-ttf-and-fix-cmap ./make.ash ./

RUN apk add --no-cache --repository https://dl-cdn.alpinelinux.org/alpine/edge/main python3 \
&&  apk add --no-cache --repository https://dl-cdn.alpinelinux.org/alpine/edge/community py3-pip \
&&  apk add --no-cache --repository https://dl-cdn.alpinelinux.org/alpine/edge/testing \
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
