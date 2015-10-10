# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

DESCRIPTION="SCons-like build system that use python as a front-end language and Ninja as a building backend"
HOMEPAGE="http://mesonbuild.com/"
SRC_URI="https://github.com/jpakkane/meson/archive/0.25.0.zip"

LICENSE="APL"
SLOT="0"
KEYWORDS="amd64 ~mips ~sparc ~x86"

DEPEND="dev-lang/python"
RDEPEND="dev-util/ninja ${DEPEND}"

src_install() {
	./install_meson.py --prefix /usr --destdir "${D}"
	dodoc readme.txt
	doman man/*.1
}
