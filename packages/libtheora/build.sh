TERMUX_PKG_HOMEPAGE=https://www.theora.org/
TERMUX_PKG_DESCRIPTION="An open video codec developed by the Xiph.org"
TERMUX_PKG_LICENSE="BSD"
TERMUX_PKG_VERSION=1.1.1
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://downloads.xiph.org/releases/theora/libtheora-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=b6ae1ee2fa3d42ac489287d3ec34c5885730b1296f0801ae577a35193d3affbc
TERMUX_PKG_DEPENDS="libogg, libvorbis"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--disable-examples"

