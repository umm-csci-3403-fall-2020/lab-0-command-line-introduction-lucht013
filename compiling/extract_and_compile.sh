PRIME=$1
SOURCE=NthPrime.tgz
tar -xf $SOURCE
cd ./NthPrime
gcc main.c nth_prime.c -o NthPrime
./NthPrime $PRIME
