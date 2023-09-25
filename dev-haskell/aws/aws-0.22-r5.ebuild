# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.2.9999
#hackport: flags: +networkbsd

CABAL_HACKAGE_REVISION=3

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Amazon Web Services (AWS) for Haskell"
HOMEPAGE="https://github.com/aristidb/aws"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64 ~arm64 ~ppc64 ~riscv ~x86"
IUSE="examples"

RESTRICT=test # requires aws account

RDEPEND=">=dev-haskell/aeson-2.0:=[profile?] <dev-haskell/aeson-2.1:=[profile?]
	>=dev-haskell/attoparsec-0.11:=[profile?] <dev-haskell/attoparsec-0.15:=[profile?]
	>=dev-haskell/base16-bytestring-0.1:=[profile?] <dev-haskell/base16-bytestring-1.1:=[profile?]
	>=dev-haskell/base64-bytestring-1.0:=[profile?] <dev-haskell/base64-bytestring-1.3:=[profile?]
	>=dev-haskell/blaze-builder-0.2.1.4:=[profile?] <dev-haskell/blaze-builder-0.5:=[profile?]
	>=dev-haskell/byteable-0.1:=[profile?] <dev-haskell/byteable-0.2:=[profile?]
	>=dev-haskell/case-insensitive-0.2:=[profile?] <dev-haskell/case-insensitive-1.3:=[profile?]
	>=dev-haskell/cereal-0.3:=[profile?] <dev-haskell/cereal-0.6:=[profile?]
	>=dev-haskell/conduit-1.3:=[profile?] <dev-haskell/conduit-1.4:=[profile?]
	>=dev-haskell/conduit-extra-1.3:=[profile?] <dev-haskell/conduit-extra-1.4:=[profile?]
	>=dev-haskell/cryptonite-0.11:=[profile?]
	>=dev-haskell/data-default-0.5.3:=[profile?] <dev-haskell/data-default-0.8:=[profile?]
	>=dev-haskell/http-client-tls-0.3:=[profile?] <dev-haskell/http-client-tls-0.4:=[profile?]
	>=dev-haskell/http-conduit-2.3:=[profile?] <dev-haskell/http-conduit-2.4:=[profile?]
	>=dev-haskell/http-types-0.7:=[profile?] <dev-haskell/http-types-1.0:=[profile?]
	>=dev-haskell/lifted-base-0.1:=[profile?] <dev-haskell/lifted-base-0.3:=[profile?]
	dev-haskell/memory:=[profile?]
	>=dev-haskell/monad-control-0.3:=[profile?]
	>=dev-haskell/network-3:=[profile?] <dev-haskell/network-4:=[profile?]
	>=dev-haskell/network-bsd-2.8:=[profile?] <dev-haskell/network-bsd-2.9:=[profile?]
	>=dev-haskell/old-locale-1:=[profile?] <dev-haskell/old-locale-2:=[profile?]
	>=dev-haskell/resourcet-1.2:=[profile?] <dev-haskell/resourcet-1.3:=[profile?]
	>=dev-haskell/safe-0.3:=[profile?] <dev-haskell/safe-0.4:=[profile?]
	>=dev-haskell/scientific-0.3:=[profile?]
	>=dev-haskell/tagged-0.7:=[profile?] <dev-haskell/tagged-0.9:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?]
	>=dev-haskell/utf8-string-0.3:=[profile?] <dev-haskell/utf8-string-1.1:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?]
	>=dev-haskell/xml-conduit-1.8:=[profile?] <dev-haskell/xml-conduit-2.0:=[profile?]
	>=dev-lang/ghc-8.10.1:=
	examples? ( >=dev-haskell/errors-2.0:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
"

PATCHES=( "${FILESDIR}"/${P}-aeson-2.patch )

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag examples examples) \
		--flag=networkbsd
}
