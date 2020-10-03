TERMUX_PKG_HOMEPAGE=http://packages.debian.org/fakeroot
TERMUX_PKG_DESCRIPTION="Tool for simulating superuser privileges (with tcp ipc)"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="Leonid Pliushch <leonid.pliushch@gmail.com>"
TERMUX_PKG_VERSION=1.25.1
TERMUX_PKG_SRCURL=https://deb.debian.org/debian/pool/main/f/fakeroot/fakeroot_${TERMUX_PKG_VERSION}.orig.tar.gz
TERMUX_PKG_SHA256=95cd11cf057c1ae38905c1c6be29a1d1e402f15cde4707b5009cc9cb995256c5
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--with-ipc=tcp"
TERMUX_PKG_BUILD_DEPENDS="libcap"

termux_step_pre_configure() {
	autoreconf -vfi
}

termux_step_post_make_install() {
	ln -sfr "${TERMUX_PREFIX}/lib/libfakeroot-0.so" "${TERMUX_PREFIX}/lib/libfakeroot.so"
}

termux_step_create_debscripts() {
	{
		echo "#!$TERMUX_PREFIX/bin/sh"
		echo "echo"
		echo "echo Fakeroot does not give you any real root permissions. This utility is primarily intended to be used for development purposes."
		echo "echo More info about usage at https://wiki.debian.org/FakeRoot."
		echo "echo"
		echo "echo Programs requiring real root permissions will not run under fakeroot. Do not post bug reports about this."
		echo "echo"
	} > ./postinst
}

