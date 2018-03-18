cd "$( dirname "${BASH_SOURCE[0]}" )"
CDIR="$(pwd)"

. settings.sh

mkdir -p $SRC_TARGET_DIR

wget -N -P$SRC_TARGET_DIR $GCC_WGET_ADDR

wget -N -P$SRC_TARGET_DIR $BINUTILS_WGET_ADDR

wget -N -P$SRC_TARGET_DIR $MPFR_WGET_ADDR

wget -N -P$SRC_TARGET_DIR $GMP_WGET_ADDR

wget -N -P$SRC_TARGET_DIR $MPC_WGET_ADDR

wget -N -P$SRC_TARGET_DIR $ISL_WGET_ADDR

wget --content-disposition -N -P$SRC_TARGET_DIR $CLOOG_WGET_ADDR

wget -N -P$SRC_TARGET_DIR $NEWLIB_WGET_ADDR

wget -N -P$SRC_TARGET_DIR $GDB_WGET_ADDR