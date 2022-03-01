#!/bin/bash

mkdir -p repos

if [ -d repos/githubadvisorydatabase ]; then
  cd repos/githubadvisorydatabase
  git pull
  cd ../..
else
  cd repos
  git clone --branch main https://github.com/github/advisory-database.git githubadvisorydatabase
  cd ..
fi

cp -r configs/githubadvisorydatabase/* repos/githubadvisorydatabase/

python -m datatig.cli build repos/githubadvisorydatabase --staticsiteoutput out/githubadvisorydatabase --staticsiteurl /githubadvisorydatabase
