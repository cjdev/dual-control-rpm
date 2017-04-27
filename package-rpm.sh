#!/bin/bash


# get source code archive
# rpmbuild -ba ....

VERSION=0.0.2

curl -L \
   https://api.github.com/repos/cjdev/dual-control/tarball/release-${VERSION} \
   > ~/rpmbuild/SOURCES/dual-control-${VERSION}.tar.gz

rpmbuild -ba $(dirname $0)/dual-control.spec

cp ~/rpmbuild/RPMS/x86_64/dual-control-${VERSION}-0.x86_64.rpm $(dirname $0)/


