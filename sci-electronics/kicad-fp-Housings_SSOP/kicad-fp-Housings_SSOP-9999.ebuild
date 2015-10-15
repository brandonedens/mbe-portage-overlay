# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

inherit git-2

REPO=${PN#kicad-fp-}
DESCRIPTION="Electronic Schematic and PCB design tools footprint libraries"
HOMEPAGE="http://github.com/KiCad"
SRC_URI=""
EGIT_REPO_URI="git://github.com/KiCad/${REPO}.pretty.git"

LICENSE="GPL-2 kicad-doc"
SLOT="0"

KEYWORDS="~amd64 ~x86"

DEPEND=">=dev-util/cmake-2.6.4"
RDEPEND="!<sci-electronics/kicad-20140717"

src_install() {
	insinto /usr/share/kicad/modules/${REPO}.pretty
	doins -r *
}
