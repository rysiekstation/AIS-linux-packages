TERMUX_PKG_HOMEPAGE=https://www.gnu.org/software/libidn/#libidn2
TERMUX_PKG_DESCRIPTION="Free software implementation of IDNA2008, Punycode and TR46"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=2.3.1
TERMUX_PKG_SRCURL=https://mirrors.kernel.org/gnu/libidn/libidn2-$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=8af684943836b8b53965d5f5b6714ef13c26c91eaa36ce7d242e3d21f5d40f2d
TERMUX_PKG_DEPENDS="libunistring, libandroid-support"
TERMUX_PKG_BREAKS="libidn2-dev"
TERMUX_PKG_REPLACES="libidn2-dev"

