#!/bin/bash

mkdir -p repos

if [ -d repos/civictechclub ]; then
  cd repos/civictechclub
  git pull
  cd ../..
else
  cd repos
  git clone --branch main https://github.com/JordanHatch/civictech.club civictechclub
  cd ..
fi

cp -r configs/civictechclub/* repos/civictechclub/

python -m datatig.cli build repos/civictechclub --staticsiteoutput out/civictechclub --staticsiteurl /civictechclub
