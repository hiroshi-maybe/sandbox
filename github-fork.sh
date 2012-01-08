#!/bin/bash

# @see
# http://help.github.com/fork-a-repo/

GITHUB_HOME=/Users/kori/Projects/git-hub

CMDNAME=`basename $0`
if [ $# -ne 1 ]; then
  echo "Usage: $CMDNAME ProjectName" 1>&2
  exit 1
fi

cd $GITHUB_HOME
git clone git@github.com:k-ori/$1.git
cd $1
git remote add upstream git://github.com/octocat/$1.git
git fetch upstream

exit 0