#!/bin/zsh

#hugo -D server

rm -rf public/*

docker run --rm --name "my-hugo-build" \
       --volume $(pwd):/src \
       --volume /tmp/hugo-build-output:/output \
       --env HUGO_DESTINATION='/src/public' \
       --env HUGO_THEME='lanyon' \
       jojomi/hugo:0.85.0