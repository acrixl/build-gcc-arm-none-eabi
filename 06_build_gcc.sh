cd "$( dirname "${BASH_SOURCE[0]}" )"
CDIR="$(pwd)"

. settings.sh

TPREFIX=`readlink -f $TARGET_TMP_PREFIX_FULL`

mkdir -p $TPREFIX

mkdir -p $BUILD_DIR/build-gcc

cd $BUILD_DIR/build-gcc

export PATH=/usr/bin:/bin

../../$SRCE_TARGET_DIR/$GCC_VERSION/configure \
 --prefix=$TPREFIX \
 --target=$TARGET_ARCH \
 --with-sysroot=$TPREFIX \
 --enable-languages=c,c++ \
 --enable-plugins \
 --enable-lto \
 --disable-decimal-float \
 --disable-libffi \
 --disable-libgomp \
 --disable-libmudflap \
 --disable-libquadmath \
 --disable-libssp \
 --disable-libstdcxx-pch \
 --disable-nls \
 --disable-shared \
 --disable-threads \
 --disable-tls \
 --with-gnu-as \
 --with-gnu-ld \
 --with-newlib \
 --with-headers=yes \
 --disable-multilib


echo "Build gcc"

make all-gcc $MAKE_OPTS
make install-gcc
