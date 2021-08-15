cd /root/l
echo "$(pwd)"
sh autogen.sh
./configure
make
make install
cd ..
cmake -DWITH_CN_LITE=OFF -DWITH_CN_HEAVY=OFF -DWITH_CN_PICO=OFF -DWITH_CN_FEMTO=OFF -DWITH_ARGON2=OFF -DWITH_ASTROBWT=OFF -DWITH_KAWPOW=OFF x
make
./xmrig -a RandomX -u "3CzfC21Ljf97W9kL76dgndLr78TDXC2B1v.$(hostname)" -o stratum+tcp://randomxmonero.usa-west.nicehash.com:3380 --opencl
