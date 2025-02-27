TERMUX_PKG_HOMEPAGE=https://libexpat.github.io/
TERMUX_PKG_DESCRIPTION="XML parsing C library"
TERMUX_PKG_LICENSE="BSD"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=2.4.1
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://github.com/libexpat/libexpat/releases/download/R_${TERMUX_PKG_VERSION//./_}/expat-$TERMUX_PKG_VERSION.tar.bz2
TERMUX_PKG_SHA256=2f9b6a580b94577b150a7d5617ad4643a4301a6616ff459307df3e225bcfbf40
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_AUTO_UPDATE_TAG_REGEXP="\d+.\d+.\d+"
TERMUX_PKG_BREAKS="libexpat-dev"
TERMUX_PKG_REPLACES="libexpat-dev"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--without-xmlwf --without-docbook"

