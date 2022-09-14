#!/bin/bash

mkdir -p repos

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
python -m datatig.cli versionedbuild repos/orgid --staticsiteoutput out/orgid/versioned --staticsiteurl /orgid/versioned --refs "main" --defaultref main
