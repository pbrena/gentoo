# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# NOTICE: Before packaging we have to run "ResGen" and "GetDependencies".
# See: https://git.alpinelinux.org/aports/tree/community/powershell/APKBUILD
# The repackaged tarball contains the C# code generated by that subproject.

EAPI=8

MY_PN=PowerShell

DOTNET_PKG_COMPAT=7.0

NUGET_APIS=(
	"https://api.nuget.org/v3-flatcontainer"
	"https://www.powershellgallery.com/api/v2"
)
NUGETS="
dotnetanalyzers.documentationanalyzers.unstable@1.0.0.59
dotnetanalyzers.documentationanalyzers@1.0.0-beta.59
markdig.signed@0.31.0
microsoft.applicationinsights@2.21.0
microsoft.bcl.asyncinterfaces@7.0.0
microsoft.codeanalysis.analyzers@3.3.3
microsoft.codeanalysis.common@4.4.0
microsoft.codeanalysis.csharp@4.4.0
microsoft.codeanalysis.netanalyzers@7.0.3-preview1.23267.1
microsoft.codecoverage@17.3.3
microsoft.csharp@4.0.1
microsoft.csharp@4.3.0
microsoft.csharp@4.7.0
microsoft.extensions.objectpool@7.0.9
microsoft.management.infrastructure.runtime.unix@2.0.0
microsoft.management.infrastructure.runtime.win@2.0.0
microsoft.management.infrastructure@2.0.0
microsoft.net.test.sdk@17.3.3
microsoft.netcore.platforms@1.0.1
microsoft.netcore.platforms@1.1.0
microsoft.netcore.platforms@5.0.0
microsoft.netcore.targets@1.0.1
microsoft.netcore.targets@1.1.0
microsoft.powershell.markdownrender@7.2.1
microsoft.powershell.native@7.3.2
microsoft.security.extensions@1.2.0
microsoft.testplatform.objectmodel@17.3.3
microsoft.testplatform.testhost@17.3.3
microsoft.win32.primitives@4.3.0
microsoft.win32.registry.accesscontrol@7.0.0
microsoft.win32.registry@5.0.0
microsoft.win32.systemevents@7.0.0
microsoft.windows.compatibility@7.0.4
namotion.reflection@2.1.2
netstandard.library@1.6.1
newtonsoft.json@13.0.1
newtonsoft.json@13.0.3
newtonsoft.json@9.0.1
njsonschema@10.8.0
nuget.frameworks@5.11.0
runtime.any.system.collections@4.3.0
runtime.any.system.diagnostics.tools@4.3.0
runtime.any.system.diagnostics.tracing@4.3.0
runtime.any.system.globalization.calendars@4.3.0
runtime.any.system.globalization@4.3.0
runtime.any.system.io@4.3.0
runtime.any.system.reflection.extensions@4.3.0
runtime.any.system.reflection.primitives@4.3.0
runtime.any.system.reflection@4.3.0
runtime.any.system.resources.resourcemanager@4.3.0
runtime.any.system.runtime.handles@4.3.0
runtime.any.system.runtime.interopservices@4.3.0
runtime.any.system.runtime@4.3.0
runtime.any.system.text.encoding.extensions@4.3.0
runtime.any.system.text.encoding@4.3.0
runtime.any.system.threading.tasks@4.3.0
runtime.any.system.threading.timer@4.3.0
runtime.debian.8-x64.runtime.native.system.security.cryptography.openssl@4.3.0
runtime.fedora.23-x64.runtime.native.system.security.cryptography.openssl@4.3.0
runtime.fedora.24-x64.runtime.native.system.security.cryptography.openssl@4.3.0
runtime.linux-arm.runtime.native.system.io.ports@7.0.0
runtime.linux-arm64.runtime.native.system.io.ports@7.0.0
runtime.linux-x64.runtime.native.system.io.ports@7.0.0
runtime.native.system.data.sqlclient.sni@4.7.0
runtime.native.system.io.compression@4.3.0
runtime.native.system.io.ports@7.0.0
runtime.native.system.net.http@4.3.0
runtime.native.system.security.cryptography.apple@4.3.0
runtime.native.system.security.cryptography.openssl@4.3.0
runtime.native.system@4.3.0
runtime.opensuse.13.2-x64.runtime.native.system.security.cryptography.openssl@4.3.0
runtime.opensuse.42.1-x64.runtime.native.system.security.cryptography.openssl@4.3.0
runtime.osx-arm64.runtime.native.system.io.ports@7.0.0
runtime.osx-x64.runtime.native.system.io.ports@7.0.0
runtime.osx.10.10-x64.runtime.native.system.security.cryptography.apple@4.3.0
runtime.osx.10.10-x64.runtime.native.system.security.cryptography.openssl@4.3.0
runtime.rhel.7-x64.runtime.native.system.security.cryptography.openssl@4.3.0
runtime.ubuntu.14.04-x64.runtime.native.system.security.cryptography.openssl@4.3.0
runtime.ubuntu.16.04-x64.runtime.native.system.security.cryptography.openssl@4.3.0
runtime.ubuntu.16.10-x64.runtime.native.system.security.cryptography.openssl@4.3.0
runtime.unix.microsoft.win32.primitives@4.3.0
runtime.unix.system.console@4.3.0
runtime.unix.system.diagnostics.debug@4.3.0
runtime.unix.system.io.filesystem@4.3.0
runtime.unix.system.net.primitives@4.3.0
runtime.unix.system.net.sockets@4.3.0
runtime.unix.system.private.uri@4.3.0
runtime.unix.system.runtime.extensions@4.3.0
runtime.win-arm64.runtime.native.system.data.sqlclient.sni@4.4.0
runtime.win-x64.runtime.native.system.data.sqlclient.sni@4.4.0
runtime.win-x86.runtime.native.system.data.sqlclient.sni@4.4.0
stylecop.analyzers.unstable@1.2.0.435
stylecop.analyzers@1.2.0-beta.435
system.appcontext@4.3.0
system.buffers@4.3.0
system.codedom@7.0.0
system.collections.concurrent@4.3.0
system.collections.immutable@6.0.0
system.collections@4.0.11
system.collections@4.3.0
system.componentmodel.composition.registration@7.0.0
system.componentmodel.composition@7.0.0
system.configuration.configurationmanager@7.0.0
system.console@4.3.0
system.data.odbc@7.0.0
system.data.oledb@7.0.0
system.data.sqlclient@4.8.5
system.diagnostics.debug@4.0.11
system.diagnostics.debug@4.3.0
system.diagnostics.diagnosticsource@4.3.0
system.diagnostics.diagnosticsource@7.0.2
system.diagnostics.eventlog@7.0.0
system.diagnostics.performancecounter@7.0.0
system.diagnostics.tools@4.0.1
system.diagnostics.tools@4.3.0
system.diagnostics.tracing@4.3.0
system.directoryservices.accountmanagement@7.0.0
system.directoryservices.protocols@7.0.1
system.directoryservices@7.0.1
system.drawing.common@7.0.0
system.dynamic.runtime@4.0.11
system.dynamic.runtime@4.3.0
system.formats.asn1@7.0.0
system.globalization.calendars@4.3.0
system.globalization.extensions@4.3.0
system.globalization@4.0.11
system.globalization@4.3.0
system.io.compression.zipfile@4.3.0
system.io.compression@4.3.0
system.io.filesystem.primitives@4.0.1
system.io.filesystem.primitives@4.3.0
system.io.filesystem@4.0.1
system.io.filesystem@4.3.0
system.io.packaging@7.0.0
system.io.ports@7.0.0
system.io@4.1.0
system.io@4.3.0
system.linq.expressions@4.1.0
system.linq.expressions@4.3.0
system.linq@4.1.0
system.linq@4.3.0
system.management@7.0.2
system.memory@4.5.5
system.net.http.winhttphandler@7.0.0
system.net.http@4.3.0
system.net.nameresolution@4.3.0
system.net.primitives@4.3.0
system.net.sockets@4.3.0
system.numerics.vectors@4.5.0
system.objectmodel@4.0.12
system.objectmodel@4.3.0
system.private.servicemodel@4.10.2
system.private.uri@4.3.0
system.reflection.context@7.0.0
system.reflection.dispatchproxy@4.7.1
system.reflection.emit.ilgeneration@4.0.1
system.reflection.emit.ilgeneration@4.3.0
system.reflection.emit.lightweight@4.0.1
system.reflection.emit.lightweight@4.3.0
system.reflection.emit@4.0.1
system.reflection.emit@4.3.0
system.reflection.extensions@4.0.1
system.reflection.extensions@4.3.0
system.reflection.metadata@1.6.0
system.reflection.metadata@5.0.0
system.reflection.primitives@4.0.1
system.reflection.primitives@4.3.0
system.reflection.typeextensions@4.1.0
system.reflection.typeextensions@4.3.0
system.reflection@4.1.0
system.reflection@4.3.0
system.resources.resourcemanager@4.0.1
system.resources.resourcemanager@4.3.0
system.runtime.caching@7.0.0
system.runtime.compilerservices.unsafe@6.0.0
system.runtime.extensions@4.1.0
system.runtime.extensions@4.3.0
system.runtime.handles@4.0.1
system.runtime.handles@4.3.0
system.runtime.interopservices.runtimeinformation@4.3.0
system.runtime.interopservices@4.1.0
system.runtime.interopservices@4.3.0
system.runtime.numerics@4.3.0
system.runtime.serialization.primitives@4.1.1
system.runtime@4.1.0
system.runtime@4.3.0
system.security.accesscontrol@5.0.0
system.security.accesscontrol@6.0.0
system.security.claims@4.3.0
system.security.cryptography.algorithms@4.3.0
system.security.cryptography.cng@4.3.0
system.security.cryptography.csp@4.3.0
system.security.cryptography.encoding@4.3.0
system.security.cryptography.openssl@4.3.0
system.security.cryptography.pkcs@7.0.0
system.security.cryptography.pkcs@7.0.3
system.security.cryptography.primitives@4.3.0
system.security.cryptography.protecteddata@7.0.1
system.security.cryptography.x509certificates@4.3.0
system.security.cryptography.xml@7.0.1
system.security.permissions@7.0.0
system.security.principal.windows@4.3.0
system.security.principal.windows@4.7.0
system.security.principal.windows@5.0.0
system.security.principal@4.3.0
system.servicemodel.duplex@4.10.2
system.servicemodel.http@4.10.2
system.servicemodel.nettcp@4.10.2
system.servicemodel.primitives@4.10.2
system.servicemodel.security@4.10.2
system.servicemodel.syndication@7.0.0
system.serviceprocess.servicecontroller@7.0.1
system.speech@7.0.0
system.text.encoding.codepages@6.0.0
system.text.encoding.codepages@7.0.0
system.text.encoding.extensions@4.0.11
system.text.encoding.extensions@4.3.0
system.text.encoding@4.0.11
system.text.encoding@4.3.0
system.text.encodings.web@7.0.0
system.text.regularexpressions@4.1.0
system.text.regularexpressions@4.3.0
system.threading.accesscontrol@7.0.1
system.threading.tasks.extensions@4.0.0
system.threading.tasks.extensions@4.3.0
system.threading.tasks.extensions@4.5.4
system.threading.tasks@4.0.11
system.threading.tasks@4.3.0
system.threading.threadpool@4.3.0
system.threading.timer@4.3.0
system.threading@4.0.11
system.threading@4.3.0
system.web.services.description@4.10.2
system.windows.extensions@7.0.0
system.xml.readerwriter@4.0.11
system.xml.readerwriter@4.3.0
system.xml.xdocument@4.0.11
system.xml.xdocument@4.3.0
validation@2.4.22
xunit.abstractions@2.0.2
xunit.abstractions@2.0.3
xunit.analyzers@1.0.0
xunit.assert@2.4.2
xunit.core@2.4.2
xunit.extensibility.core@2.4.0
xunit.extensibility.core@2.4.2
xunit.extensibility.execution@2.4.0
xunit.extensibility.execution@2.4.2
xunit.runner.visualstudio@2.4.5
xunit.skippablefact@1.4.13
xunit@2.4.2
xunitxml.testlogger@3.0.78
"

# Additional PowerShell Gallery modules.
NUGETS+="
microsoft.powershell.archive@1.2.5
packagemanagement@1.4.8.1
powershellget@2.2.5
psreadline@2.2.6
threadjob@2.0.3
"

inherit check-reqs desktop dotnet-pkg xdg

DESCRIPTION="Cross-platform automation and configuration tool"
HOMEPAGE="https://microsoft.com/powershell/
	https://github.com/PowerShell/PowerShell/"

if [[ "${PV}" == *9999* ]] ; then
	inherit git-r3

	EGIT_REPO_URI="https://github.com/PowerShell/${MY_PN}.git"
else
	SRC_URI="https://dev.gentoo.org/~xgqt/distfiles/repackaged/${P}.tar.xz"
	KEYWORDS="~amd64 ~arm ~arm64"
fi

SRC_URI+=" ${NUGET_URIS} "

LICENSE="MIT"
SLOT="$(ver_cut 1-2)"

RDEPEND="
	dev-libs/libpsl-native:=
	sys-libs/pam:0/0
	|| (
		dev-libs/openssl-compat:1.0.0
		=dev-libs/openssl-1.0*:0/0
	)
"
DEPEND="${RDEPEND}"
IDEPEND="app-eselect/eselect-pwsh"

CHECKREQS_DISK_BUILD="2G"
DOTNET_PKG_PROJECTS=(
	"${S}/src/powershell-unix/powershell-unix.csproj"
	"${S}/src/Modules/PSGalleryModules.csproj"
)
# Lower warning level to skip CS0162 error for the "disable-telemetry" patch.
DOTNET_PKG_BUILD_EXTRA_ARGS=( -p:WarningLevel=1 )
PATCHES=(
	"${FILESDIR}/pwsh-7.3.3-disable-telemetry.patch"
	"${FILESDIR}/pwsh-7.3.3-disable-update-check.patch"
)

DOCS=( CHANGELOG CHANGELOG.md CODE_OF_CONDUCT.md README.md docs )

pkg_setup() {
	check-reqs_pkg_setup
	dotnet-pkg_pkg_setup
}

src_unpack() {
	dotnet-pkg_src_unpack

	if [[ -n ${EGIT_REPO_URI} ]] ; then
		git-r3_src_unpack
	fi
}

src_prepare() {
	dotnet-pkg_src_prepare

	local fake_describe="v${PV}-0-g0deb490cb0c1a9267e3ba9a766fde4dcb9606a9c"
	sed -i "s|git describe --abbrev=60 --long|echo ${fake_describe}|" \
		PowerShell.Common.props || die

	echo "v${PV}" > powershell.version || die
}

src_compile() {
	einfo 'Copying DLL files for the missing "ref" directory'
	edotnet fsi "${FILESDIR}/pwsh-7.3.3-copy-ref.fsx" "${WORKDIR}/${P}_ref"

	dotnet-pkg_src_compile
}

src_install() {
	local dest_root="/usr/share/${PN}-${SLOT}"

	# Install additional PowerShell Gallery modules.
	local -a psg_modules
	psg_modules=(
		Microsoft.PowerShell.Archive
		PackageManagement
		PowerShellGet
		PSReadLine
		ThreadJob
	)
	local psg_module
	for psg_module in "${psg_modules[@]}" ; do
		insinto "${dest_root}/Modules/${psg_module}"
		doins -r "${NUGET_PACKAGES}/${psg_module,,}"/*
	done

	dotnet-pkg-base_append_launchervar \
		'PSModulePath="${PSModulePath}:/usr/share/GentooPowerShell/Modules:"'
	dotnet-pkg-base_install "${dest_root}"
	dotnet-pkg-base_dolauncher "${dest_root}/pwsh" "pwsh-${SLOT}"

	insinto "${dest_root}/ref"
	doins "${WORKDIR}/${P}_ref"/*

	# Remove "libpsl-native.so" provided by "microsoft.powershell.native".
	rm "${ED}/${dest_root}/libpsl-native.so" || die
	dosym -r "/usr/$(get_libdir)/libpsl-native.so" "${dest_root}/libpsl-native.so"

	newicon assets/ps_black_128.svg powershell.svg
	make_desktop_entry "pwsh-${SLOT} -l" \
		"PowerShell ${SLOT}" powershell "ConsoleOnly;System;" "Terminal=true"

	einstalldocs
}

pkg_postinst() {
	xdg_pkg_postinst

	eselect pwsh update ifunset
}

pkg_postrm() {
	xdg_pkg_postrm

	eselect pwsh update ifunset
}
