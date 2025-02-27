TERMUX_PKG_HOMEPAGE=https://www.gnupg.org/related_software/pinentry/index.html
TERMUX_PKG_DESCRIPTION="Dialog allowing secure password entry"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.2.0
TERMUX_PKG_SRCURL=https://www.gnupg.org/ftp/gcrypt/pinentry/pinentry-$TERMUX_PKG_VERSION.tar.bz2
TERMUX_PKG_SHA256=10072045a3e043d0581f91cd5676fcac7ffee957a16636adedaa4f583a616470
TERMUX_PKG_DEPENDS="libandroid-support, libassuan, libiconv, ncurses"
TERMUX_PKG_BUILD_DEPENDS="libgpg-error"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--disable-pinentry-fltk --without-libcap"

