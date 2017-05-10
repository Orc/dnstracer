Summary:   a tool to trace dns queries
Name:      dnstracer
Version:   1.2.20020124
Release:   1
Copyright: BSD
Group:     Applications/Internet
URL:       http://www.mavetju.org/unix/general.php
Source:    %{name}-%{version}.tar.gz
Patch0:    dnstracer-1.2-am_req.patch
Buildroot: /tmp/%{name}-%{version}-root
BuildPrereq: perl

%description
dnstracer determines where a given Domain Name Server (DNS) gets
its information from, and follows the chain of DNS servers back to
the servers which know the data.

%prep
%setup -q
%patch0 -p1

%build
./configure.sh --prefix=%{_prefix} --mandir=%{_mandir}
make

%install
make install TARGET=$RPM_BUILD_ROOT

%clean
rm -fr $RPM_BUILD_ROOT

%files
%defattr(-,root,root)
%{_prefix}/bin
%{_mandir}/*
