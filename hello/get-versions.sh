#!/bin/sh
#
# run -v or --versions to collect a log of
# version numbers for including in tutorials/etc.

SEP="==============================================="

echo running on $(hostname) on $(date)

echo " "
echo " "

cat /etc/os-release
uname -a
echo $SEP


echo " "
echo " "
echo "gcc"

which gcc && gcc --version

echo " "
echo " "

echo $SEP

which g++ & g++ --version

echo " "
echo " "

echo $SEP

which perl && perl -v

echo " "
echo " "
echo $SEP

which python && python --version

echo " "
echo " "
echo $SEP

which php && php --version

echo " "
echo " "
echo $SEP

which ruby && ruby --version

echo " "
echo " "
echo $SEP

which node && node --version

