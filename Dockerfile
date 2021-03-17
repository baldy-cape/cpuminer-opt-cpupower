FROM debian:10-slim
LABEL maintainer="laurence.baldwin@gmail.com"
RUN apt-get update 
RUN apt-get install -y git  automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev make g++ lib32z1-dev
RUN git clone https://github.com/cpu-pool/cpuminer-opt-cpupower.git
RUN chmod +x /cpuminer-opt-cpupower/build.sh
RUN cd cpuminer-opt-cpupower/ && ./build.sh

CMD /cpuminer-opt-cpupower/cpuminer -a yespowerr16 -ostratum+tcp://cpu-pool.com:63368 -uYd1SuvGoN3HVLDW8t7AEbfJN7r1XhMJgFC.$HOSTNAME --no-color -q 
