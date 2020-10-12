TERMUX_PKG_HOMEPAGE=https://starship.rs
TERMUX_PKG_DESCRIPTION="A minimal, blazing fast, and extremely customizable prompt for any shell"
TERMUX_PKG_LICENSE="ISC"
TERMUX_PKG_VERSION=0.46.0
TERMUX_PKG_SRCURL=https://github.com/starship/starship/archive/v$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=e53087b4bd206fb971fb21daf27b1640a7c72adddcdbed1e469f0f3a0863d4ae
TERMUX_PKG_DEPENDS="zlib"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--no-default-features"

termux_step_pre_configure() {
	CFLAGS+=" $CPPFLAGS"
	if [ $TERMUX_ARCH = arm ]; then
		CFLAGS+=" -fno-integrated-as"
	fi
}


