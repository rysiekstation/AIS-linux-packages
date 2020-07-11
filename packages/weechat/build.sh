TERMUX_PKG_HOMEPAGE=https://weechat.org/
TERMUX_PKG_DESCRIPTION="Fast, light and extensible IRC chat client"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_VERSION=2.8
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://www.weechat.org/files/src/weechat-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=1f01f60013145358bb82174376fced8890d6e51828134febcd87c882d2a1ff76
TERMUX_PKG_DEPENDS="libiconv, ncurses, libgcrypt, libcurl, libgnutls, libandroid-support, zlib"
TERMUX_PKG_BREAKS="weechat-dev"
TERMUX_PKG_REPLACES="weechat-dev"
TERMUX_PKG_RM_AFTER_INSTALL="bin/weechat-curses share/man/man1/weechat-headless.1 share/icons"

TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCA_FILE=$TERMUX_PREFIX/etc/tls/cert.pem
-DENABLE_HEADLESS=OFF
-DENABLE_LUA=ON
-DENABLE_MAN=ON
-DENABLE_PERL=ON
-DENABLE_PYTHON3=ON
-DENABLE_TCL=OFF
-DENABLE_PHP=OFF
-DENABLE_JAVASCRIPT=OFF
-DENABLE_GUILE=OFF
-DENABLE_SPELL=OFF
-DENABLE_TESTS=OFF
-DSTRICT=ON
-DMSGFMT_EXECUTABLE=$(which msgfmt)
-DMSGMERGE_EXECUTABLE=$(which msgmerge)
-DXGETTEXT_EXECUTABLE=$(which xgettext)
"

termux_step_pre_configure() {
	TERMUX_PKG_EXTRA_CONFIGURE_ARGS+=" -DPKG_CONFIG_EXECUTABLE=$PKG_CONFIG"
}

