TERMUX_PKG_HOMEPAGE=https://developer.gnome.org/glib/
TERMUX_PKG_DESCRIPTION="Library providing core building blocks for libraries and applications written in C"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_VERSION=2.64.3
TERMUX_PKG_SRCURL=https://ftp.gnome.org/pub/gnome/sources/glib/${TERMUX_PKG_VERSION:0:4}/glib-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=fe9cbc97925d14c804935f067a3ad77ef55c0bbe9befe68962318f5a767ceb22
# libandroid-support to get langinfo.h in include path.
TERMUX_PKG_DEPENDS="libffi, libiconv, pcre, libandroid-support, zlib"
TERMUX_PKG_BREAKS="glib-dev"
TERMUX_PKG_REPLACES="glib-dev"
TERMUX_PKG_RM_AFTER_INSTALL="share/gtk-doc lib/locale share/glib-2.0/gettext share/gdb/auto-load share/glib-2.0/codegen share/glib-2.0/gdb bin/gtester-report bin/glib-gettextize bin/gdbus-codegen"
# Needed by pkg-config for glib-2.0:
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dlibmount=disabled
-Diconv=external
"

termux_step_pre_configure() {
	# glib checks for __BIONIC__ instead of __ANDROID__:
	CFLAGS+=" -D__BIONIC__=1"
}

termux_step_create_debscripts() {
	for i in postinst postrm triggers; do
		sed \
			"s|@TERMUX_PREFIX@|${TERMUX_PREFIX}|g" \
			"${TERMUX_PKG_BUILDER_DIR}/hooks/${i}.in" > ./${i}
		chmod 755 ./${i}
	done
	unset i
	chmod 644 ./triggers
}
