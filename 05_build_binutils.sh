
. settings.sh

TPREFIX=`readlink -f $TARGET_TMP_PREFIX`

mkdir -p $BUILD_DIR/build-binutils

cd $BUILD_DIR/build-binutils

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games

../../$SRCE_TARGET_DIR/$BINUTILS_VERSION/configure \
 --prefix=$TPREFIX \
 --target=$TARGET_ARCH \
 --with-sysroot=$TPREFIX \
 --disable-nls \
 --disable-werror \
 --disable-sim \
 --disable-gdb \
 --enable-interwork \
 --enable-plugins \
 --enable-lto


echo "Build binutils"

make $MAKE_OPTS
make install
