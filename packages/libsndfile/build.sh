TERMUX_PKG_HOMEPAGE=http://www.mega-nerd.com/libsndfile
TERMUX_PKG_DESCRIPTION="Library for reading/writing audio files"
TERMUX_PKG_LICENSE="LGPL-2.0"
TERMUX_PKG_VERSION=1.0.30
TERMUX_PKG_SRCURL=https://github.com/erikd/libsndfile/releases/download/v${TERMUX_PKG_VERSION}/libsndfile-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=9df273302c4fa160567f412e10cc4f76666b66281e7ba48370fb544e87e4611a
TERMUX_PKG_DEPENDS="libflac, libvorbis"
TERMUX_PKG_BREAKS="libsndfile-dev"
TERMUX_PKG_REPLACES="libsndfile-dev"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--disable-sqlite --disable-alsa"
TERMUX_PKG_RM_AFTER_INSTALL="bin/ share/man/man1/"

