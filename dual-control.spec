Name:           dual-control
Version:        0.0.2
Release:        0
Summary:        PAM Module supporting dual control
License:        GPL
URL:            http://gitlab.cj.com/operations-and-delivery/dual-control
Vendor:         CJ Engineering
Source:         ~/rpmbuild/SOURCES/%{name}-%{version}.tar.gz
Prefix:         %{_prefix}
Packager:       JC
BuildRoot:      %{_tmppath}/%{name}-root
Requires:       qrencode

%description
CJ Engineering PAM Module for dual control

%prep
%setup -q -n %{name}-%{version}

%build
CFLAGS="$RPM_OPT_FLAGS" ./configure --with-pam-module-directory=/lib64/security
make

%define debug_package %{nil}

%install
[ "$RPM_BUILD_ROOT" != "/" ] && rm -rf $RPM_BUILD_ROOT
LDFLAGS+=--build-id
mkdir -p $RPM_BUILD_ROOT/lib64/security
make DESTDIR=$RPM_BUILD_ROOT install

%clean
[ "$RPM_BUILD_ROOT" != "/" ] && rm -rf $RPM_BUILD_ROOT

%files
%defattr(-,root,root)
%doc README.md LICENSE
/lib64/security/pam_dual_control.so
/bin/_dual_control
/bin/dual_control
