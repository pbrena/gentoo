# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Data structure for working with Jupyter notebooks (ipynb)"
HOMEPAGE="https://hackage.haskell.org/package/ipynb"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64 ~arm64 ~ppc64 ~riscv ~x86"

RDEPEND=">=dev-haskell/aeson-1.5.2.0:=[profile?]
	dev-haskell/base64-bytestring:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/microlens
		dev-haskell/microlens-aeson
		dev-haskell/tasty
		dev-haskell/tasty-hunit )
"
