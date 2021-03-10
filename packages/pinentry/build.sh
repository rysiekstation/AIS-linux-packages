TERMUX_PKG_HOMEPAGE=https://www.gnupg.org/related_software/pinentry/index.html
TERMUX_PKG_DESCRIPTION="Dialog allowing secure password entry"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.1.1
TERMUX_PKG_SRCURL=https://www.gnupg.org/ftp/gcrypt/pinentry/pinentry-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=cd12a064013ed18e2ee8475e669b9f58db1b225a0144debdb85a68cecddba57f
TERMUX_PKG_DEPENDS="libandroid-support, libassuan, libiconv, ncurses"
TERMUX_PKG_BUILD_DEPENDS="libgpg-error"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--disable-pinentry-fltk --without-libcap"

