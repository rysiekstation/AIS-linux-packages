TERMUX_PKG_HOMEPAGE=https://libvips.github.io/libvips/
TERMUX_PKG_DESCRIPTION="A fast image processing library with low memory needs"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_MAINTAINER="Thibault Meyer <meyer.thibault@gmail.com>"
TERMUX_PKG_VERSION=8.11.0
TERMUX_PKG_SRCURL=https://github.com/libvips/libvips/releases/download/v${TERMUX_PKG_VERSION}/vips-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=6351dfb99836274a0d74d8054506bf6dc9a8c38bacf208a9c566889dd1ebba0b
TERMUX_PKG_DEPENDS="fftw, giflib, imagemagick, libexif, libexpat, libjpeg-turbo, libtiff, libwebp"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--disable-gtk-doc"

