#!/bin/ash

cd /data/converter || exit 1

for otf in /data/otf/*.otf
do
    fontforge -script otf-to-ttf.sh "${otf}"
    bundle exec ruby process-cmap.rb "${otf}"
done

rm -f /data/converter/build/*
