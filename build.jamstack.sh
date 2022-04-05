#!/bin/bash

mkdir -p repos

if [ -d repos/jamstack ]; then
  cd repos/jamstack
  git pull
  cd ../..
else
  cd repos
  git clone --branch main https://github.com/jamstack/jamstack.org jamstack
  cd ..
fi

cp -r configs/jamstack/* repos/jamstack/

python -m datatig.cli build repos/jamstack --staticsiteoutput out/jamstack --staticsiteurl /jamstack
