#!/bin/bash

# versioning
# setup rpm build environment (_top)

sudo yum install -y git gcc autoconf pam-devel rpm-build
mkdir -p ~/rpmbuild/{BUILD,BUILDROOT,RPMS,SOURCES,SPECS,SRPMS}
echo '%_topdir      %(echo $HOME)/rpmbuild' > ~/.rpmmacros 

