#!/bin/sh

NAME=kde-plasma-mail-checker
COMMIT="4193d9b4f7cd555df36f"

git clone -q git://github.com/F1ash/plasmaMailChecker.git

pushd ${NAME} > /dev/null 2>&1
git checkout -qf $COMMIT
popd > /dev/null 2>&1

# Remove .git
rm -rf ${NAME}/.git

# make tarboll
tar cfjv ${NAME}.tar.bz2 $NAME > /dev/null 2>&1

# remove dir
rm -rf ${NAME}
