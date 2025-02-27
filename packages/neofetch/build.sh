TERMUX_PKG_HOMEPAGE=https://github.com/dylanaraps/neofetch
TERMUX_PKG_DESCRIPTION="Simple system information script"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=7.1.0
TERMUX_PKG_SRCURL=https://github.com/dylanaraps/neofetch/archive/${TERMUX_PKG_VERSION}/neofetch-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=58a95e6b714e41efc804eca389a223309169b2def35e57fa934482a6b47c27e7
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="bash"
TERMUX_PKG_EXTRA_MAKE_ARGS="PREFIX=$TERMUX_PREFIX SYSCONFDIR=$TERMUX_PREFIX/etc"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_PLATFORM_INDEPENDENT=true


