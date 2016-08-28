#!/bin/bash
set -ev
# Push webmention changes back to GitHub
git config --global user.email "$GIT_EMAIL"
git config --global user.name "$GIT_NAME"
#cd ../ Maybe don't need to move up a directory?
pwd
git status
git checkout -b jekyll_new
git status
git show-ref
git add --ignore-removal .
git commit -m "Webmentions Travis #$TRAVIS_BUILD_NUMBER"
git checkout jekyll
git merge jekyll_new
git push --quiet "https://${GH_TOKEN}@${GH_REF}" HEAD:jekyll > /dev/null 2>&1
