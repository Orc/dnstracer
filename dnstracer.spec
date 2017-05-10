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
BuildPrereq: automake autoconf perl

%description
dnstracer determines where a given Domain Name Server (DNS) gets
its information from, and follows the chain of DNS servers back to
the servers which know the data.

%prep
%setup -q
%patch0 -p1

%build
aclocal
automake
autoconf
./configure --prefix=%{_prefix} --mandir=%{_mandir}
make

%install
make install DESTDIR=$RPM_BUILD_ROOT

%clean
rm -fr $RPM_BUILD_ROOT

%files
%defattr(-,root,root)
%{_prefix}/bin
%{_mandir}/*
