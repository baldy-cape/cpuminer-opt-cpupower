# cpuminer-opt-cpupower
Ready to go mining YENTEN

## Setup 
    $ docker build -t cpuminer-opt-cpupower https://github.com/baldy-cape/cpuminer-opt-cpupower.git
    $ docker run -d -h$HOSTNAME  --restart always  --name mining cpuminer-opt-cpupower
    $ docker logs mining

## Worker Name
To name the worker after the system hostname
 
    $ docker run -d -h$HOSTNAME --name mining cpuminer-opt-cpupower
