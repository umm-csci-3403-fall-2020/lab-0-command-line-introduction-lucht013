NAME=$1
TEMPDIR="$(mktemp -d scratchXXX)"
tar -C ./$TEMPDIR -xzf $NAME
cd ./$TEMPDIR
grep -rl 'DELETE ME!'|xargs rm
tar -czf ../cleaned_$NAME $(basename -s .tgz $NAME)
cd ..
rm -r $TEMPDIR
