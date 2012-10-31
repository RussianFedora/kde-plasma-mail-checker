#!/bin/sh

NAME=kde-plasma-mail-checker
GIT_NAME=plasmaMailChecker
COMMIT="8135599772"

git clone -q git://github.com/F1ash/${GIT_NAME}.git

pushd ${GIT_NAME} > /dev/null 2>&1
git checkout -qf $COMMIT
VERSION=`cat ./VERSION`
popd > /dev/null 2>&1

# Remove .git
rm -rf ${GIT_NAME}/.git

mv ${GIT_NAME} ${NAME}-${VERSION}
# make tarboll
tar cfjv ${NAME}-${VERSION}.tar.bz2 ${NAME}-${VERSION} > /dev/null 2>&1

# remove dir
rm -rf ${NAME}-${VERSION}
