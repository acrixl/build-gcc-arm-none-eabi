
. settings.sh

TPREFIX=`readlink -f $TARGET_TMP_PREFIX`

mkdir -p $BUILD_DIR/build-gdb

cd $BUILD_DIR/build-gdb

export PATH=$TPREFIX/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games

../../$SRCE_TARGET_DIR/$GDB_VERSION/configure \
 --prefix=$TPREFIX \
 --target=$TARGET_ARCH \
 --disable-nls


echo "Build gdb"

make $MAKE_OPTS
make install
