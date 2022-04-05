#!/bin/bash


mkdir -p repos

# Entries below should be alphabetically sorted

echo "========================================================================  CODE FOR IATI"

source  build.codeforiati.sh

echo "========================================================================  END OF LIFE"

source  build.endoflifedate.sh

echo "========================================================================  GITHUB ADVISORY DATABASE"

source  build.githubadvisorydatabase.sh

echo "========================================================================  JAMSTACK"

source  build.jamstack.sh

echo "========================================================================  OPENDATASCOT"

source  build.opendatascot.sh

echo "========================================================================  ORGID"

source  build.orgid.sh

echo "========================================================================  REGISTER"

source  build.register.sh

echo "========================================================================  UPFORGRABS"

source  build.upforgrabs.sh

