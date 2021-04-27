TERMUX_PKG_HOMEPAGE=https://libvips.github.io/libvips/
TERMUX_PKG_DESCRIPTION="A fast image processing library with low memory needs"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_MAINTAINER="Thibault Meyer <meyer.thibault@gmail.com>"
TERMUX_PKG_VERSION=8.10.6
TERMUX_PKG_SRCURL=https://github.com/libvips/libvips/releases/download/v${TERMUX_PKG_VERSION}/vips-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=2468088d958e0e2de1be2991ff8940bf45664a826c0dad12342e1804e2805a6e
TERMUX_PKG_DEPENDS="fftw, giflib, imagemagick, libexif, libexpat, libjpeg-turbo, libtiff, libwebp"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--disable-gtk-doc"

