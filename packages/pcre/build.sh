TERMUX_PKG_HOMEPAGE=https://www.pcre.org
TERMUX_PKG_DESCRIPTION="Library implementing regular expression pattern matching using the same syntax and semantics as Perl 5"
TERMUX_PKG_LICENSE="BSD 3-Clause"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=8.45
TERMUX_PKG_SRCURL=https://ftp.pcre.org/pub/pcre/pcre-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=4dae6fdcd2bb0bb6c37b5f97c33c2be954da743985369cddac3546e3218bffb8
TERMUX_PKG_BREAKS="pcre-dev"
TERMUX_PKG_REPLACES="pcre-dev"
TERMUX_PKG_RM_AFTER_INSTALL="bin/pcregrep bin/pcretest share/man/man1/pcre*.1"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--enable-cpp --enable-jit --enable-utf8 --enable-unicode-properties"

