TERMUX_PKG_HOMEPAGE=https://dev.yorhel.nl/ncdu
TERMUX_PKG_DESCRIPTION="Disk usage analyzer"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.16
TERMUX_PKG_SRCURL=https://dev.yorhel.nl/download/ncdu-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=2b915752a183fae014b5e5b1f0a135b4b408de7488c716e325217c2513980fd4
TERMUX_PKG_DEPENDS="ncurses, libandroid-support"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--with-shell=$TERMUX_PREFIX/bin/bash"


