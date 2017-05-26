# RPM Packager for Dual Control PAM Module
This builds and installs the [dual-control](https://github.com/cjdev/dual-control.git) PAM module.

## Setup on CentOS

0. `sudo yum install -y git`
0. `git clone https://github.com/cjdev/dual-control-rpm.git`
0. `cd dual-control-rpm`
0. `./setup.sh`

## Build and Install an RPM
Choose a Dual Control version number from [dual-control releases](https://github.com/cjdev/dual-control/releases)
(ex. 0.1.2). `<rpm package>` refers to the package that `package-rpm.sh` builds.

0. `./package-rpm.sh <version number>`
0. `./rpm -i <rpm package>`
