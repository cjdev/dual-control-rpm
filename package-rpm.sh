#!/bin/bash


# get source code archive
# rpmbuild -ba ....

VERSION=0.0.1

git archive \
   --remote git@github.com:cjdev/dual-control.git \
   --prefix dual-control-${VERSION}/ \
   --format tar.gz \
   -o ~/rpmbuild/SOURCES/dual-control-${VERSION}.tar.gz \
   release-${VERSION}

rpmbuild -ba $(dirname $0)/dual-control.spec

cp ~/rpmbuild/RPMS/x86_64/dual-control-0.0.1-0.x86_64.rpm $(dirname $0)/


