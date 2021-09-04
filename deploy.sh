#!/bin/zsh

echo "Build starting..."
hugo || echo "Hugo build failed."
echo "Build successful."

echo "Proceed with deploy..."
firebase deploy || echo "Deploy failed"
echo "Firebase deployment completed"
