TERMUX_PKG_HOMEPAGE=https://gstreamer.freedesktop.org/
TERMUX_PKG_DESCRIPTION="GStreamer base plug-ins"
TERMUX_PKG_LICENSE="LGPL-2.0"
TERMUX_PKG_VERSION=1.18.0
TERMUX_PKG_SRCURL=https://gstreamer.freedesktop.org/src/gst-plugins-base/gst-plugins-base-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=762abdd1a950809a1cea62fff7f86b5f7d6bd5f6841e3e585c700b823cdb7897
TERMUX_PKG_DEPENDS="gstreamer, libandroid-shmem, libjpeg-turbo, libopus, libpng, libvorbis, zlib"
TERMUX_PKG_BREAKS="gst-plugins-base-dev"
TERMUX_PKG_REPLACES="gst-plugins-base-dev"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dtests=disabled
-Dexamples=disabled
-Dpango=disabled
"

termux_step_pre_configure() {
	LDFLAGS+=" -landroid-shmem"
}
