#!/bin/bash -e

version=$1

if [ -z "$version" ]
then
  echo "ERROR: No package version supplied. Aborting." >&2
  exit 1
fi

npm test
testStatus=$?

if [ $testStatus -ne 0 ]
then
  echo "ERROR: npm test failed. Aborting." >&2
  exit 1
fi

echo "Bumping package version to $version"
npm version $version -m "Bumping package version to (%s)"
git push origin master
git push origin v$version
npm publish
