#!/bin/bash

mkdir -p repos

if [ -d repos/codeforiati ]; then
  cd repos/codeforiati
  git pull
  cd ../..
else
  cd repos
  git clone --branch gh-pages https://github.com/codeforIATI/codeforiati.github.io.git codeforiati
  cd ..
fi

cp -r configs/codeforiati/* repos/codeforiati/

python -m datatig.cli build repos/codeforiati --staticsiteoutput out/codeforiati --staticsiteurl /codeforiati

