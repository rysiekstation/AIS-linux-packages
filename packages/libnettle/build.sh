TERMUX_PKG_HOMEPAGE=https://www.lysator.liu.se/~nisse/nettle/
TERMUX_PKG_DESCRIPTION="Cryptographic library that is designed to fit easily in more or less any context"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=3.7.3
TERMUX_PKG_SRCURL=https://mirrors.kernel.org/gnu/nettle/nettle-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=661f5eb03f048a3b924c3a8ad2515d4068e40f67e774e8a26827658007e3bcf0
TERMUX_PKG_DEPENDS="libgmp"
TERMUX_PKG_BREAKS="libnettle-dev"
TERMUX_PKG_REPLACES="libnettle-dev"

