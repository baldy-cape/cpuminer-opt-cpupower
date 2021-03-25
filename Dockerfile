FROM debian:10-slim
LABEL maintainer="laurence.baldwin@gmail.com"
RUN apt-get update 
RUN apt-get install -y git  automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev make g++ lib32z1-dev
RUN git clone https://github.com/cpu-pool/cpuminer-opt-cpupower.git
RUN chmod +x /cpuminer-opt-cpupower/build.sh
RUN cd cpuminer-opt-cpupower/ && ./build.sh

#CMD /cpuminer-opt-cpupower/cpuminer -a yespowerr16 -ostratum+tcp://cpu-pool.com:63368 -uYd1SuvGoN3HVLDW8t7AEbfJN7r1XhMJgFC.$HOSTNAME --no-color -q 
#CMD /cpuminer-opt-cpupower/cpuminer -a yespowersugar -o stratum+tcp://cpu-pool.com:63418 -u sugar1qxtsm32sw54f6gasdhw6hy9g0jk60mdhmenv3wx.$HOSTNAME --no-color -q
#CMD /cpuminer-opt-cpupower/cpuminer -a yescrypt -o stratum+tcp://yescrypt.eu.mine.zpool.ca:6233 -u bc1qqka5csar9388nvzw3hhj49ec9uks8p5a3s4s8q -p $HOSTNAME,c=BTC --no-color -q

CMD while true; \
do\
 cpuminer-opt-cpupower/cpuminer  -r 0 -a allium -o stratum+tcp://allium.eu.mine.zpool.ca:6433 -u bc1qqka5csar9388nvzw3hhj49ec9uks8p5a3s4s8q -p $HOSTNAME,allium,argon2d4096,argon2d500,blake2s,blakecoin,cpupower,groestl,hmq1725,keccak,lyra2z,lyra2z330,m7m,yespowerR16,scrypt,yescrypt,c=BTC --no-color;\
 cpuminer-opt-cpupower/cpuminer  -r 0 -a argon2d4096 -o stratum+tcp://argon2d4096.eu.mine.zpool.ca:4240 -u bc1qqka5csar9388nvzw3hhj49ec9uks8p5a3s4s8q -p $HOSTNAME,allium,argon2d4096,argon2d500,blake2s,blakecoin,cpupower,groestl,hmq1725,keccak,lyra2z,lyra2z330,m7m,yespowerR16,scrypt,yescrypt,c=BTC --no-color;\
 cpuminer-opt-cpupower/cpuminer  -r 0 -a argon2d500 -o stratum+tcp://argon2d500.eu.mine.zpool.ca:4239 -u bc1qqka5csar9388nvzw3hhj49ec9uks8p5a3s4s8q -p $HOSTNAME,allium,argon2d4096,argon2d500,blake2s,blakecoin,cpupower,groestl,hmq1725,keccak,lyra2z,lyra2z330,m7m,yespowerR16,scrypt,yescrypt,c=BTC --no-color;\
 cpuminer-opt-cpupower/cpuminer  -r 0 -a blake2s -o stratum+tcp://blake2s.eu.mine.zpool.ca:5766 -u bc1qqka5csar9388nvzw3hhj49ec9uks8p5a3s4s8q -p $HOSTNAME,allium,argon2d4096,argon2d500,blake2s,blakecoin,cpupower,groestl,hmq1725,keccak,lyra2z,lyra2z330,m7m,yespowerR16,scrypt,yescrypt,c=BTC --no-color;\
 cpuminer-opt-cpupower/cpuminer  -r 0 -a blakecoin -o stratum+tcp://blakecoin.eu.mine.zpool.ca:5743 -u bc1qqka5csar9388nvzw3hhj49ec9uks8p5a3s4s8q -p $HOSTNAME,allium,argon2d4096,argon2d500,blake2s,blakecoin,cpupower,groestl,hmq1725,keccak,lyra2z,lyra2z330,m7m,yespowerR16,scrypt,yescrypt,c=BTC --no-color;\
 cpuminer-opt-cpupower/cpuminer  -r 0 -a cpupower -o stratum+tcp://cpupower.eu.mine.zpool.ca:6240 -u bc1qqka5csar9388nvzw3hhj49ec9uks8p5a3s4s8q -p $HOSTNAME,allium,argon2d4096,argon2d500,blake2s,blakecoin,cpupower,groestl,hmq1725,keccak,lyra2z,lyra2z330,m7m,yespowerR16,scrypt,yescrypt,c=BTC --no-color;\
 cpuminer-opt-cpupower/cpuminer  -r 0 -a groestl -o stratum+tcp://groestl.eu.mine.zpool.ca:5333 -u bc1qqka5csar9388nvzw3hhj49ec9uks8p5a3s4s8q -p $HOSTNAME,allium,argon2d4096,argon2d500,blake2s,blakecoin,cpupower,groestl,hmq1725,keccak,lyra2z,lyra2z330,m7m,yespowerR16,scrypt,yescrypt,c=BTC --no-color;\
 cpuminer-opt-cpupower/cpuminer  -r 0 -a hmq1725 -o stratum+tcp://hmq1725.eu.mine.zpool.ca:3747 -u bc1qqka5csar9388nvzw3hhj49ec9uks8p5a3s4s8q -p $HOSTNAME,allium,argon2d4096,argon2d500,blake2s,blakecoin,cpupower,groestl,hmq1725,keccak,lyra2z,lyra2z330,m7m,yespowerR16,scrypt,yescrypt,c=BTC --no-color;\
 cpuminer-opt-cpupower/cpuminer  -r 0 -a keccak -o stratum+tcp://keccak.eu.mine.zpool.ca:5133 -u bc1qqka5csar9388nvzw3hhj49ec9uks8p5a3s4s8q -p $HOSTNAME,allium,argon2d4096,argon2d500,blake2s,blakecoin,cpupower,groestl,hmq1725,keccak,lyra2z,lyra2z330,m7m,yespowerR16,scrypt,yescrypt,c=BTC --no-color;\
 cpuminer-opt-cpupower/cpuminer  -r 0 -a lyra2z -o stratum+tcp://lyra2z.eu.mine.zpool.ca:4553 -u bc1qqka5csar9388nvzw3hhj49ec9uks8p5a3s4s8q -p $HOSTNAME,allium,argon2d4096,argon2d500,blake2s,blakecoin,cpupower,groestl,hmq1725,keccak,lyra2z,lyra2z330,m7m,yespowerR16,scrypt,yescrypt,c=BTC --no-color;\
 cpuminer-opt-cpupower/cpuminer  -r 0 -a lyra2z330 -o stratum+tcp://lyra2z330.eu.mine.zpool.ca:4563 -u bc1qqka5csar9388nvzw3hhj49ec9uks8p5a3s4s8q -p $HOSTNAME,allium,argon2d4096,argon2d500,blake2s,blakecoin,cpupower,groestl,hmq1725,keccak,lyra2z,lyra2z330,m7m,yespowerR16,scrypt,yescrypt,c=BTC --no-color;\
 cpuminer-opt-cpupower/cpuminer  -r 0 -a m7m -o stratum+tcp://m7m.eu.mine.zpool.ca:6033 -u bc1qqka5csar9388nvzw3hhj49ec9uks8p5a3s4s8q -p $HOSTNAME,allium,argon2d4096,argon2d500,blake2s,blakecoin,cpupower,groestl,hmq1725,keccak,lyra2z,lyra2z330,m7m,yespowerR16,scrypt,yescrypt,c=BTC --no-color;\
 cpuminer-opt-cpupower/cpuminer  -r 0 -a yespowerR16 -o stratum+tcp://yespowerR16.eu.mine.zpool.ca:6534 -u bc1qqka5csar9388nvzw3hhj49ec9uks8p5a3s4s8q -p $HOSTNAME,allium,argon2d4096,argon2d500,blake2s,blakecoin,cpupower,groestl,hmq1725,keccak,lyra2z,lyra2z330,m7m,yespowerR16,yescrypt,scrypt,c=BTC --no-color;\
 cpuminer-opt-cpupower/cpuminer  -r 0 -a scrypt -o stratum+tcp://scrypt.eu.mine.zpool.ca:3433 -u bc1qqka5csar9388nvzw3hhj49ec9uks8p5a3s4s8q -p $HOSTNAME,allium,argon2d4096,argon2d500,blake2s,blakecoin,cpupower,groestl,hmq1725,keccak,lyra2z,lyra2z330,m7m,yespowerR16,scrypt,yescrypt,c=BTC --no-color;\
 cpuminer-opt-cpupower/cpuminer  -r 0 -a yescrypt -o stratum+tcp://yescrypt.eu.mine.zpool.ca:6233 -u bc1qqka5csar9388nvzw3hhj49ec9uks8p5a3s4s8q -p $HOSTNAME,allium,argon2d4096,argon2d500,blake2s,blakecoin,cpupower,groestl,hmq1725,keccak,lyra2z,lyra2z330,m7m,yespowerR16,scrypt,yescrypt,c=BTC --no-color;\
done
