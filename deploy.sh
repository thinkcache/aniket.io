#!/bin/zsh

# echo "Build starting..."
# hugo || echo "Hugo build failed."
# echo "Build successful."

# echo "Proceed with deploy..."
# firebase deploy || echo "Deploy failed"
# echo "Firebase deployment completed"


#####
##### Setup instructions:  #####
#####
##### https://github.com/AndreySenov/firebase-tools-docker/blob/master/doc/guide/running_firebase_emulators.md


docker run --rm -it -p 9199:9199  \
           -p 9099:9099 \
           -p 9005:9005 \
           -p 9000:9000 \
           -p 8085:8085 \
           -p 8080:8080 \
           -p 5001:5001 \
           -p 5000:5000 \
           -p 4000:4000 \
           -v $(pwd):/home/node \
           andreysenov/firebase-tools:9.18.0 firebase deploy
           #firebase emulators:start
           #firebase deploy --help
           #firebase init emulators