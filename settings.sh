

GCC_VERSION=gcc-6.3.0
GCC_WGET_ADDR=http://nl.mirror.babylon.network/gcc/releases/$GCC_VERSION/$GCC_VERSION.tar.bz2

BINUTILS_VERSION=binutils-2.28
BINUTILS_WGET_ADDR=https://ftp.gnu.org/gnu/binutils/$BINUTILS_VERSION.tar.bz2

#GLIBC_VERSION=glibc-2.20

MPFR_VERSION=mpfr-3.1.5
MPFR_WGET_ADDR=https://ftp.gnu.org/gnu/mpfr/$MPFR_VERSION.tar.bz2

GMP_VERSION=gmp-6.1.2
GMP_WGET_ADDR=https://ftp.gnu.org/gnu/gmp/$GMP_VERSION.tar.bz2

MPC_VERSION=mpc-1.0.3
MPC_WGET_ADDR=https://ftp.gnu.org/gnu/mpc/$MPC_VERSION.tar.gz

ISL_VERSION=isl-0.18
ISL_WGET_ADDR=http://isl.gforge.inria.fr/$ISL_VERSION.tar.bz2

CLOOG_VERSION=cloog-0.18.4
CLOOG_WGET_ADDR=https://www.bastoul.net/cloog/pages/download/count.php3?url=./$CLOOG_VERSION.tar.gz

NEWLIB_VERSION=newlib-2.5.0.20170228
NEWLIB_WGET_ADDR=ftp://sourceware.org/pub/newlib/$NEWLIB_VERSION.tar.gz

GDB_VERSION=gdb-7.12
GDB_WGET_ADDR=https://ftp.gnu.org/gnu/gdb/$GDB_VERSION.tar.gz


SRC_TARGET_DIR=src

SRCE_TARGET_DIR=srce

BUILD_DIR=build

TARGET_TMP_PREFIX=out


TARGET_ARCH=arm-none-eabi


MAKE_OPTS=-j4