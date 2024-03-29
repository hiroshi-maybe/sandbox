#!/bin/bash

# @see
# http://help.github.com/create-a-repo/

CMDNAME=`basename $0`
if [ $# -ne 3 ]; then
  echo "Usage: $CMDNAME add-file commit-message repository-name" 1>&2
  exit 1
fi

echo "## filename       : $1"
echo "## commit-message : $2"
echo "## repository-name: $3"

git add $1
git commit -m "$2"
git remote add origin git@github.com:k-ori/$3.git
git push -u origin master

exit 0