TERMUX_PKG_HOMEPAGE=https://www.netfilter.org/projects/libnftnl/
TERMUX_PKG_DESCRIPTION="Netfilter library providing interface to the nf_tables subsystem"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.2.0
TERMUX_PKG_SRCURL=http://netfilter.org/projects/libnftnl/files/libnftnl-$TERMUX_PKG_VERSION.tar.bz2
TERMUX_PKG_SHA256=90b01fddfe9be8c3245c3ba5ff5a4424a8df708828f92b2b361976b658c074f5
TERMUX_PKG_DEPENDS="libmnl"
TERMUX_PKG_BREAKS="libnftnl-dev"
TERMUX_PKG_REPLACES="libnftnl-dev"

