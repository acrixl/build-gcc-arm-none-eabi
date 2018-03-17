
. settings.sh

TPREFIX=`readlink -f $TARGET_TMP_PREFIX`

cd $BUILD_DIR/build-gcc

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games

echo "Install gcc"

make all $MAKE_OPTS
make install
