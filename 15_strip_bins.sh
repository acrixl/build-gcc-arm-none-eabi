
. settings.sh

TPREFIX=`readlink -f $TARGET_TMP_PREFIX`

BINS1=$TPREFIX/arm-none-eabi/bin/*
BINS2=$TPREFIX/bin/*

BINS="$BINS1 $BINS2"

for bin in $BINS ; do
 echo $bin
 strip $bin
done
