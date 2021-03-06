# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=(python{2_7,3_6})
inherit distutils-r1

DESCRIPTION="Python ctypes wrapper for libsodium"
HOMEPAGE="https://libnacl.readthedocs.org/"
SRC_URI="https://github.com/saltstack/libnacl/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="dev-libs/libsodium"

python_test() {
	${EPYTHON} tests/runtests.py || die
}
