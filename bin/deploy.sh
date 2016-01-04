#!/bin/bash

# Only deploy if not PR
if [[ $TRAVIS_PULL_REQUEST = "false" &&  $TRAVIS_BRANCH = "master" ]]
  then
  cd _output/site/

  git init
  git checkout -b gh-pages
  git remote add origin https://${GH_TOKEN}@github.com/wjdp/gotdict

  # commit and push generated content to built branch
  # since remote was added with token auth - we can push there
  git config user.email "will+gotdict@pimblett.me.uk"
  git config user.name "gotdict"
  git add -A .
  git commit -a -m "Build $TRAVIS_BUILD_NUMBER"
  git push --quiet -f origin gh-pages > /dev/null 2>&1 # Hiding all the output from git push command, to prevent token leak.
fi
