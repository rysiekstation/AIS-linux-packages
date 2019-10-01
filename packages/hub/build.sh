TERMUX_PKG_HOMEPAGE=https://hub.github.com/
TERMUX_PKG_DESCRIPTION="Command-line wrapper for git that makes you better at GitHub"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_VERSION=2.12.7
TERMUX_PKG_SRCURL=https://github.com/github/hub/archive/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=53d812b09aed87c49cc62d09a8827c2dfe7b776732b71287b800320bd23ea028
TERMUX_PKG_DEPENDS="git"

termux_step_make_install() {
	termux_setup_golang

	cd $TERMUX_PKG_SRCDIR

	export GOPATH="${TERMUX_PKG_BUILDDIR}"
	mkdir -p "${GOPATH}/src/github.com/github"
	cp -a "${TERMUX_PKG_SRCDIR}" "${GOPATH}/src/github.com/github/hub"
	cd "${GOPATH}/src/github.com/github/hub"
	make bin/hub prefix=$TERMUX_PREFIX
	cp ./bin/hub $TERMUX_PREFIX/bin/hub
}
