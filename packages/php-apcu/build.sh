TERMUX_PKG_HOMEPAGE=http://php.net/apcu
TERMUX_PKG_DESCRIPTION="APCu - APC User Cache"
TERMUX_PKG_LICENSE="PHP-3.01"
TERMUX_PKG_LICENSE_FILE=LICENSE
TERMUX_PKG_MAINTAINER="ian4hu <hu2008yinxiang@163.com>"
TERMUX_PKG_VERSION=5.1.20
TERMUX_PKG_SRCURL="https://github.com/krakjoe/apcu/archive/refs/tags/v$TERMUX_PKG_VERSION.tar.gz"
TERMUX_PKG_DEPENDS=php
TERMUX_PKG_SHA256=8d3868f37808d85274fbdea48bab0fd7a32302c87d5a8bcad841c8e517174ffd
# php is (currently) blacklisted for x86_64. Need to blacklist
# php-apcu as well for the same arch for
#   ./build-package.sh -a all -i php-apcu
# to succeed
TERMUX_PKG_BLACKLISTED_ARCHES="x86_64"

termux_step_pre_configure() {
	$TERMUX_PREFIX/bin/phpize
}
