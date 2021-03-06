#!/bin/bash
set -ev
if [ $TRAVIS_BRANCH == 'jekyll' ] ; then
    # Initialize a new git repo in _site, and push it to our server.
    cd _site
    git init

    git remote add deploy "git@162.243.37.62:/var/www/miklb.com"
    git config user.name "Travis CI"
    git config user.email "miklb+travisCI@miklb.com"

    git add .
    git commit -m "Deploy"
    git push --force deploy master
else
    echo "Not deploying, since this branch isn't jekyll."
fi
