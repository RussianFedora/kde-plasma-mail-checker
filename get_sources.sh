#!/bin/sh

NAME=kde-plasma-mail-checker
GIT_NAME=plasmaMailChecker
<<<<<<< HEAD
COMMIT="6d4fac74a1"
=======
COMMIT="06ecbfc646"
>>>>>>> 32d8cefbb7d7d54cdf8c28b8b4f1092808dad9ed

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
