
. settings.sh


mkdir -p $SRCE_TARGET_DIR

for f in $SRC_TARGET_DIR/*.tar.*; do
  echo $f
  tar --totals -xf $f -C $SRCE_TARGET_DIR
done

echo "Make links to libs in gcc"

ln -sf ../$MPFR_VERSION $SRCE_TARGET_DIR/$GCC_VERSION/mpfr
ln -sf ../$GMP_VERSION $SRCE_TARGET_DIR/$GCC_VERSION/gmp
ln -sf ../$MPC_VERSION $SRCE_TARGET_DIR/$GCC_VERSION/mpc
ln -sf ../$ISL_VERSION $SRCE_TARGET_DIR/$GCC_VERSION/isl
ln -sf ../$CLOOG_VERSION $SRCE_TARGET_DIR/$GCC_VERSION/cloog

