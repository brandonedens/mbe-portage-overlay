# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

inherit git-r3

EGIT_REPO_URI="git://github.com/aitjcize/cppman.git"

DESCRIPTION="C++ 98/11/14 manual pages for Linux/MacOS"
HOMEPAGE="https://github.com/aitjcisze/cppman"
#SRC_URI="https://github.com/aitjcize/cppman/archive/master.zip"
SRC_URI=""

LICENSE="GPL"
SLOT="0"
KEYWORDS="amd64 ~mips ~sparc ~x86"

DEPEND="dev-lang/python >=dev-python/beautifulsoup-4 sys-apps/groff"
RDEPEND="${DEPEND}"

src_install() {
	python setup.py install --root "${D}" --optimize=1
	doman misc/*.1
}
