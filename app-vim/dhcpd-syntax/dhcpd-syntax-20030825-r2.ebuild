# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit vim-plugin

DESCRIPTION="vim plugin: syntax highlighting for dhcpd.conf"
HOMEPAGE="https://www.vim.org/scripts/script.php?script_id=744"

LICENSE="vim"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~loong ~mips ~ppc ~ppc64 ~riscv ~s390 ~sparc ~x86"

VIM_PLUGIN_HELPTEXT="This plugin provides syntax highlighting for dhcpd.conf files."

PATCHES=( "${FILESDIR}"/"${P}"-multiple-addresses.patch )
