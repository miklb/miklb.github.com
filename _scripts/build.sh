#!/bin/bash

# only proceed script when started not by pull request (PR)
if [ $TRAVIS_PULL_REQUEST == "true" ]; then
  echo "this is PR, exiting"
  exit 0
fi

# enable error reporting to the console
set -ev

# build site with jekyll, by default to `_site' folder
bundle exec jekyll build
# find ./_site -name "*.html" -exec bundle exec htmlbeautifier {} \;
