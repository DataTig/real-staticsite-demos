#!/bin/bash


mkdir -p repos

if [ -d repos/opendatascot ]; then
  cd repos/opendatascot
  git pull
  cd ../..
else
  cd repos
  git clone --branch gh-pages https://github.com/OpenDataScotland/jkan.git opendatascot
  cd ..
fi

cp -r configs/opendatascot/* repos/opendatascot/

python -m datatig.cli build repos/opendatascot --staticsiteoutput out/opendatascot --staticsiteurl /opendatascot

