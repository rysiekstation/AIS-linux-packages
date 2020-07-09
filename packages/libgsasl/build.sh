TERMUX_PKG_HOMEPAGE=https://www.gnu.org/software/gsasl
TERMUX_PKG_DESCRIPTION="GNU SASL library"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_VERSION=1.8.1
TERMUX_PKG_SRCURL=https://download.savannah.nongnu.org/releases/gsasl/libgsasl-$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=19e2f90525c531010918c50bb1febef0d7115d620150cc66153b9ce73ff814e6
TERMUX_PKG_DEPENDS="libidn"
TERMUX_PKG_BREAKS="libgsasl-dev"
TERMUX_PKG_REPLACES="libgsasl-dev"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--without-libgcrypt"

