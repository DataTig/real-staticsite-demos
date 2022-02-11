#!/bin/bash


mkdir -p repos

echo "========================================================================  CODE FOR IATI"

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

echo "========================================================================  JAMSTACK"

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

echo "========================================================================  ORGID"

if [ -d repos/orgid ]; then
  cd repos/orgid
  git pull
  cd ../..
else
  cd repos
  git clone --branch main  https://github.com/org-id/register.git orgid
  cd ..
fi

python -m datatig.cli build repos/orgid --staticsiteoutput out/orgid --staticsiteurl /orgid

echo "========================================================================  UPFORGRABS"

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
