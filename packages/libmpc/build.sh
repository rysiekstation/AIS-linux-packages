TERMUX_PKG_HOMEPAGE=http://www.multiprecision.org/
TERMUX_PKG_DESCRIPTION="Library for the arithmetic of complex numbers with arbitrarily high precision"
TERMUX_PKG_LICENSE="LGPL-2.0"
TERMUX_PKG_VERSION=1.2.0
TERMUX_PKG_SRCURL=https://mirrors.kernel.org/gnu/mpc/mpc-$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=e90f2d99553a9c19911abdb4305bf8217106a957e3994436428572c8dfe8fda6
TERMUX_PKG_DEPENDS="libgmp, libmpfr"
TERMUX_PKG_BREAKS="libmpc-dev"
TERMUX_PKG_REPLACES="libmpc-dev"


