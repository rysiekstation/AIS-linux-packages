TERMUX_PKG_HOMEPAGE=https://github.com/protobuf-c/protobuf-c
TERMUX_PKG_DESCRIPTION="Protocol buffers C library"
TERMUX_PKG_LICENSE="BSD 3-Clause"
TERMUX_PKG_MAINTAINER="Henrik Grimler @Grimler91"
TERMUX_PKG_VERSION=1.3.3
TERMUX_PKG_REVISION=10
TERMUX_PKG_SRCURL=https://github.com/protobuf-c/protobuf-c/releases/download/v${TERMUX_PKG_VERSION}/protobuf-c-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=22956606ef50c60de1fabc13a78fbc50830a0447d780467d3c519f84ad527e78
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="libc++, libprotobuf, protobuf"
TERMUX_PKG_BREAKS="libprotobuf-c-dev"
TERMUX_PKG_REPLACES="libprotobuf-c-dev"

