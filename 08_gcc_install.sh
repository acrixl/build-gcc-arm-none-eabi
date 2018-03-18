cd "$( dirname "${BASH_SOURCE[0]}" )"
CDIR="$(pwd)"

. settings.sh

TPREFIX=`readlink -f $TARGET_TMP_PREFIX_FULL`

cd $BUILD_DIR/build-gcc

export PATH=/usr/bin:/bin

echo "Install gcc"

make all $MAKE_OPTS
make install
