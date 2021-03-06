
#
# Copyright 2014-2017 Katherine Flavel
#
# See LICENCE for the full copyright terms.
#

PKGCONF ?= pkgconf # or pkg-config
PCFLAGS ?=

.for pkg in ${PKG}

.BEGIN::
	${PKGCONF} ${PCFLAGS} --exists ${pkg}

CFLAGS.${pkg} != ${PKGCONF} ${PCFLAGS} ${pkg} --cflags
LIBS.${pkg}   != ${PKGCONF} ${PCFLAGS} ${pkg} --libs

.endfor

