#!/bin/bash
set -ev
# cleanup
rm -rf ../miklb.github.com.master

#clone `master' branch of the repository using encrypted GH_TOKEN for authentification
git clone https://${GH_TOKEN}@github.com/miklb/miklb.github.com.git ../miklb.github.com.master

# copy generated HTML site to `master' branch
cp -R _site/* ../miklb.github.com.master

# commit and push generated content to `master' branch
# since repository was cloned in write mode with token auth - we can push there
cd ../miklb.github.com.master
git config user.email "miklb@miklb.com"
git config user.name "miklb"
git add -A .
git commit -a -m "Travis #$TRAVIS_BUILD_NUMBER"
git push --quiet origin master > /dev/null 2>&1
