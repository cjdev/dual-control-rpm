#!/bin/bash

sudo yum install -y git gcc-c++ autoconf pam-devel rpm-build
mkdir -p ~/rpmbuild/{BUILD,BUILDROOT,RPMS,SOURCES,SPECS,SRPMS}
echo '%_topdir      %(echo $HOME)/rpmbuild' > ~/.rpmmacros 

