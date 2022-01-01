# ANIKET's PERSONAL WEBSITE 

## Specifications: 
- Website framework: Hugo (https://gohugo.io/)
- Theme: Lanyon (https://github.com/tummychow/lanyon-hugo)
- Type: Static website
- Deployment: Firebase hosting  

## Build, Test and Deploy Procedures

### How to test changes locally with HUGO

> ./deploy_local.sh

### Build locally with HUGO

> ./build.sh

### FIREBASE setup (One time activity)
https://github.com/AndreySenov/firebase-tools-docker/blob/master/doc/guide/running_firebase_emulators.md 

docker run --rm -p 9199:9199 -p 9099:9099 -p 9005:9005 -p 9000:9000 -p 8085:8085 -p 8080:8080 -p 5001:5001 -p 5000:5000 -p 4000:4000 -v /Users/apple/Documents/GreyFox/hypeBanana:/home/node --name firebase-tools andreysenov/firebase-tools:9.18.0 OR USE FROM ./deploy.sh


### Test locally with FIREBASE

> ./firebase_emulate.sh

### Deploy on FIREBASE

> ./deploy.sh
