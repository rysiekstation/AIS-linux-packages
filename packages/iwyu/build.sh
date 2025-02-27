TERMUX_PKG_HOMEPAGE=https://include-what-you-use.org/
TERMUX_PKG_DESCRIPTION="A tool to analyze #includes in C and C++ source files"
TERMUX_PKG_LICENSE=NCSA
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=0.16
TERMUX_PKG_REVISION=2
TERMUX_PKG_SRCURL=https://github.com/include-what-you-use/include-what-you-use/archive/$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=313e92b4fe38f99a0bbae3ba16c5eb2c54b821b6263e7745e1dd4b4eca08d948
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS='clang, python'
TERMUX_PKG_BUILD_DEPENDS=libllvm-static

