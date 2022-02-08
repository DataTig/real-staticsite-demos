#!/bin/bash


mkdir -p repos

echo "========================================================================  CODE FOR IATI"

if [ -d repos/codeforiati ]; then
  cd repos/codeforiati
  git pull
  cd ../..
else
  cd repos
  git clone https://github.com/codeforIATI/codeforiati.github.io.git codeforiati
  cd ..
fi

cp -r configs/codeforiati/* repos/codeforiati/

python -m datatig.cli build repos/codeforiati --staticsiteoutput out/codeforiati --staticsiteurl /codeforiati

echo "========================================================================  ORGID"

if [ -d repos/orgid ]; then
  cd repos/orgid
  git pull
  cd ../..
else
  cd repos
  git clone https://github.com/org-id/register.git orgid
  cd ..
fi

python -m datatig.cli build repos/orgid --staticsiteoutput out/orgid --staticsiteurl /orgid
