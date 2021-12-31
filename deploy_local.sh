#!/bin/zsh

#hugo -D server

rm -rf public/*

docker run --rm -it --name "my-hugo-deploy-local"  \
       --volume $(pwd):/src \
       --volume /tmp/hugo-build-output:/output \
       --env HUGO_WATCH=1 \
       --env HUGO_DESTINATION='/src/public' \
       --env HUGO_THEME='tania' \
       -p 1313:1313 \
       jojomi/hugo:0.85.0