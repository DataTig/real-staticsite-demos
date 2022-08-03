#!/bin/bash

mkdir -p repos

if [ -d repos/register ]; then
  cd repos/register
  git pull
  cd ../..
else
  cd repos
  git clone --branch main  https://github.com/DataTig/site-datatig-register.git register
  cd ..
fi

python -m datatig.cli build repos/register --staticsiteoutput out/register --staticsiteurl /register
python -m datatig.cli versionedbuild repos/register --staticsiteoutput out/register/versioned --staticsiteurl /register/versioned --refs "main" --default-ref main

