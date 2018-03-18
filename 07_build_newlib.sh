cd "$( dirname "${BASH_SOURCE[0]}" )"
CDIR="$(pwd)"

. settings.sh

TPREFIX=`readlink -f $TARGET_TMP_PREFIX_FULL`

mkdir -p $TPREFIX

mkdir -p $BUILD_DIR/build-newlib

cd $BUILD_DIR/build-newlib

export PATH=$TPREFIX/bin:/usr/bin:/bin

../../$SRCE_TARGET_DIR/$NEWLIB_VERSION/configure \
 --prefix=$TPREFIX \
 --target=$TARGET_ARCH \
 --enable-newlib-io-long-long \
 --enable-newlib-register-fini \
 --disable-newlib-supplied-syscalls \
 --disable-nls


echo "Build newlib"

make $MAKE_OPTS
make install
