TERMUX_PKG_HOMEPAGE=https://cli.github.com/
TERMUX_PKG_DESCRIPTION="GitHub’s official command line tool"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="Krishna kanhaiya @kcubeterm"
TERMUX_PKG_VERSION=0.8.0
TERMUX_PKG_SRCURL=https://github.com/cli/cli/archive/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=6439f2b01681be33b2b3fa313abdb700e5f6344ddff5e0fe8e01226c20d36442

termux_step_make() {
	termux_setup_golang

	cd "$TERMUX_PKG_SRCDIR"

	export GOPATH=$TERMUX_PKG_BUILDDIR
	mkdir -p "$GOPATH"/src/github.com/cli/
	mkdir -p "$TERMUX_PREFIX"/share/doc/gh
	cp -a "$TERMUX_PKG_SRCDIR" "$GOPATH"/src/github.com/cli/cli
	cd "$GOPATH"/src/github.com/cli/cli/cmd/gh
	go get -d -v
	go build
}

termux_step_make_install() {
	install -Dm700 -t "$TERMUX_PREFIX"/bin "$GOPATH"/src/github.com/cli/cli/cmd/gh/gh
	install -Dm600 -t "$TERMUX_PREFIX"/share/doc/gh/ "$TERMUX_PKG_SRCDIR"/docs/*
}
