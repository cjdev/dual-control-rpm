# RPM Packager for Dual Control PAM Module

## Ansible + Vagrant Setup

If you have ansible and vagrant available, `vagrant up` should setup a
virtual machine configured for dual control authentication. Just sudo as eng1 (password the same as the username) and then try to sudo from the eng1 account.  Log in as the eng2 user to obtain a dual control token.

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

