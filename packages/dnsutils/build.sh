TERMUX_PKG_HOMEPAGE=https://www.isc.org/downloads/bind/
TERMUX_PKG_DESCRIPTION="Clients provided with BIND"
TERMUX_PKG_LICENSE="MPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=9.16.11
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL="ftp://ftp.isc.org/isc/bind9/${TERMUX_PKG_VERSION}/bind-${TERMUX_PKG_VERSION}.tar.xz"
TERMUX_PKG_SHA256=0111f64dd7d8f515cfa129e181cce96ff82070d1b27f11a21f6856110d0699c1
TERMUX_PKG_DEPENDS="openssl, readline, resolv-conf, zlib, libuv"
TERMUX_PKG_BREAKS="dnsutils-dev"
TERMUX_PKG_REPLACES="dnsutils-dev"
TERMUX_PKG_BUILD_IN_SRC=true

TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--disable-linux-caps
--without-python
--with-ecdsa=no
--with-gost=no
--with-gssapi=no
--with-libjson=no
--with-libtool
--with-libxml2=no
--with-openssl=$TERMUX_PREFIX
--with-randomdev=/dev/random
--with-readline=-lreadline
--with-eddsa=no
"

termux_step_pre_configure() {
	export BUILD_AR=ar
	export BUILD_CC=gcc
	export BUILD_CFLAGS=
	export BUILD_CPPFLAGS=
	export BUILD_LDFLAGS=
	export BUILD_RANLIB=

	_RESOLV_CONF=$TERMUX_PREFIX/etc/resolv.conf
	CFLAGS+=" $CPPFLAGS -DRESOLV_CONF=\\\"$_RESOLV_CONF\\\""
}

termux_step_make() {
	make -C lib/isc
	make -C lib/dns
	make -C lib/ns
	make -C lib/isccc
	make -C lib/isccfg
	make -C lib/bind9
	make -C lib/irs
	make -C bin/dig
	make -C bin/delv
	make -C bin/nsupdate
}

termux_step_make_install() {
	make -C lib/isc install
	make -C lib/dns install
	make -C lib/ns install
	make -C lib/isccc install
	make -C lib/isccfg install
	make -C lib/bind9 install
	make -C lib/irs install
	make -C bin/dig install
	make -C bin/delv install
	make -C bin/nsupdate install
}

