cd "$( dirname "${BASH_SOURCE[0]}" )"
CDIR="$(pwd)"

. settings.sh

ln -fs ${PKG_NAME}_$PKG_VERSION $TARGET_TMP_PREFIX/$PKG_NAME

tar --checkpoint=.100 --transform "s,^,$PKG_PREFIX/," -cjf $TAR_DIR/$TAR_NAME.tar.bz2 -C $TARGET_TMP_PREFIX .

