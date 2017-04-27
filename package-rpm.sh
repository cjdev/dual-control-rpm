#!/bin/bash

VERSION=$1

if [ -z "$VERSION" ]; then
  echo "version required"
  exit 3
fi

origtar=$(mktemp)

curl -L \
   https://api.github.com/repos/cjdev/dual-control/tarball/release-${VERSION} \
   > "$origtar"

workdir=$(mktemp -d)
pushd "$workdir"
tar -xzvf "$origtar"
prefix=dual-control-${VERSION}
mv * "$prefix"
tar -czvf ~/rpmbuild/SOURCES/dual-control-${VERSION}.tar.gz "$prefix"
popd

spec=$(mktemp)
sed "s/^Version:.*$/Version: ${VERSION}/" "$(dirname $0)/dual-control.spec" > "$spec"


rpmbuild -ba "$spec"

cp ~/rpmbuild/RPMS/x86_64/dual-control-${VERSION}-0.x86_64.rpm $(dirname $0)/

rm -rf "$origtar" "$workdir" "$spec"
echo $spec
echo $origtar
echo $workdir

