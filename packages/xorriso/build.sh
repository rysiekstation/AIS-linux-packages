TERMUX_PKG_HOMEPAGE=https://www.gnu.org/software/xorriso
TERMUX_PKG_DESCRIPTION="Tool for creating ISO files."
TERMUX_PKG_VERSION=1.5.0
TERMUX_PKG_SHA256=a93fa7ae5bb1902198cddfec25201388156932f36f2f5da829bf4fcae9a6062b
TERMUX_PKG_SRCURL=https://www.gnu.org/software/xorriso/xorriso-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_DEPENDS="libandroid-support, readline, libbz2"
TERMUX_PKG_BUILD_IN_SRC=yes
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--disable-jtethreads"
