
. settings.sh

TPREFIX=`readlink -f $TARGET_TMP_PREFIX`

#MULTILIB_LIST="--with-multilib-list=armv6-m,armv7-m,armv7e-m,armv7-r,armv8-m.base,armv8-m.main"

mkdir -p $BUILD_DIR/build-gcc

cd $BUILD_DIR/build-gcc

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games

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
