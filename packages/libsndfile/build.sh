TERMUX_PKG_HOMEPAGE=http://www.mega-nerd.com/libsndfile
TERMUX_PKG_DESCRIPTION="Library for reading/writing audio files"
TERMUX_PKG_LICENSE="LGPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.0.31
TERMUX_PKG_SRCURL=https://github.com/erikd/libsndfile/releases/download/${TERMUX_PKG_VERSION}/libsndfile-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=a8cfb1c09ea6e90eff4ca87322d4168cdbe5035cb48717b40bf77e751cc02163
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="libflac, libvorbis"
TERMUX_PKG_BREAKS="libsndfile-dev"
TERMUX_PKG_REPLACES="libsndfile-dev"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--disable-sqlite --disable-alsa"
TERMUX_PKG_RM_AFTER_INSTALL="bin/ share/man/man1/"

