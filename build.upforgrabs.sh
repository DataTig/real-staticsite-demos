#!/bin/bash


mkdir -p repos

if [ -d repos/upforgrabs ]; then
  cd repos/upforgrabs
  git pull
  cd ../..
else
  cd repos
  git clone --branch gh-pages https://github.com/up-for-grabs/up-for-grabs.net.git upforgrabs
  cd ..
fi

cp -r configs/upforgrabs/* repos/upforgrabs/

python -m datatig.cli build repos/upforgrabs --staticsiteoutput out/upforgrabs --staticsiteurl /upforgrabs
