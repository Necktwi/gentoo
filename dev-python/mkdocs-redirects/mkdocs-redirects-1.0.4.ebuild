# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..10} )

inherit distutils-r1


DESCRIPTION="Plugin for Mkdocs page redirects"
HOMEPAGE="
	https://github.com/datarobot/mkdocs-redirects
	https://pypi.org/project/mkdocs-redirects/
"
SRC_URI="https://github.com/mkdocs/mkdocs-redirects/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~riscv ~x86"

RDEPEND="
	>=dev-python/mkdocs-1.0.4[${PYTHON_USEDEP}]
	<dev-python/mkdocs-2[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
	dev-python/twine[${PYTHON_USEDEP}]
"

distutils_enable_tests pytest
