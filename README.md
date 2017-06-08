# RPM Packager for Dual Control PAM Module

## Ansible + Vagrant Setup

If you have ansible and vagrant available, the following steps will
setup a working installation of the pam module.

- In one terminal:
  - `vagrant up`
  - `ssh -p 2222 eng2@localhost` password: eng2
  - `dual_control` to create a token
- In another terminal:
  - `ssh -p 2222 eng1@localhost` password: eng1
  - `sudo bash` password: eng1
  - When prompted enter `eng2:<dual control token from above>`
  - When prompted enter reason for superuser access

## Manual Setup

### Setup on a Virtualbox


0. `sudo yum install -y git`
0. git clone https://github.com/cjdev/dual-control-rpm.git
0. run `setup.sh` from  cloned project


### Build and Install an RPM

0. run `package-rpm.sh <version>`
0. run `rpm -i <rpm package>`

