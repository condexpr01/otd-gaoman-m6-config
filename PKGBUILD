# Maintainer: condexpr01(Vito Devlin) <condexpr01@outlook.com>
PACKAGER='condexpr01(Vito Devlin) <condexpr01@outlook.com>'
pkgname=otd-gaoman-m6-config
pkgver=2026.01.30.1
pkgrel=1
pkgdesc='linux opentabletdriver gaomon m6 configuration files'
arch=('any')
url='https://github.com/condexpr01/otd-gaoman-m6-config.git'

license=('MIT')

#depends=('opentabletdriver')
#makedepends=('pandoc' 'gzip')

source=('readme.md' 'LICENSE.txt' 't')
sha256sums=('SKIP' 'SKIP' 'SKIP')

prefix=${PREFIX:-/usr}

prepare() {
	cp -r "$startdir/Presets" $srcdir
}

package() {

	pandoc -s -t man "$srcdir/readme.md" -o "$srcdir/readme.1"
	gzip -9c "$srcdir/readme.1" > "$srcdir/${pkgname}.gz"

	install -Dm644 "$srcdir/${pkgname}.gz" "$pkgdir${prefix}/share/man/man1/${pkgname}.1.gz"
	install -Dm644 "$srcdir/LICENSE.txt" "$pkgdir${prefix}/share/license/${pkgname}/LICENSE.txt"

	install -Dm644 "$srcdir/Presets/abs.json" "$pkgdir${prefix}/share/${pkgname}/Presets/abs.json"
	install -Dm644 "$srcdir/Presets/art.json" "$pkgdir${prefix}/share/${pkgname}/Presets/art.json"
	install -Dm644 "$srcdir/Presets/mouse.json" "$pkgdir${prefix}/share/${pkgname}/Presets/mouse.json"

	install -Dm755 "$srcdir/t" "$pkgdir${prefix}/bin/t"
}
