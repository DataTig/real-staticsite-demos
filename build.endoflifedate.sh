#!/bin/bash

mkdir -p repos

if [ -d repos/endoflifedate ]; then
  cd repos/endoflifedate
  git pull
  cd ../..
else
  cd repos
  git clone --branch master https://github.com/endoflife-date/endoflife.date.git endoflifedate
  cd ..
fi

cp -r configs/endoflifedate/* repos/endoflifedate/

python -m datatig.cli build repos/endoflifedate --staticsiteoutput out/endoflifedate --staticsiteurl /endoflifedate
