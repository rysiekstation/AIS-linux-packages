TERMUX_PKG_HOMEPAGE=https://github.com/apple/swift-corelibs-libdispatch
TERMUX_PKG_DESCRIPTION="The libdispatch project, for concurrency on multicore hardware"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="@buttaface"
_VERSION=5.5
TERMUX_PKG_VERSION=1:${_VERSION}
TERMUX_PKG_SRCURL=https://github.com/apple/swift-corelibs-libdispatch/archive/swift-${_VERSION}-RELEASE.tar.gz
TERMUX_PKG_SHA256=5efdfa1d2897c598acea42fc00776477bb3713645686774f5ff0818b26649e62
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_AUTO_UPDATE_TAG_REGEXP="\d+\.\d+"
TERMUX_PKG_DEPENDS="libc++, libblocksruntime"

