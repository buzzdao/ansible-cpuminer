#! /bin/bash
# /etc/init.d/cpuminer
# Carry out specific functions when asked to by the system
cpumun=`cat /proc/cpuinfo| grep "processor"| wc -l`
declare -i sum=$cpumun
case "$1" in
  start)
    echo "Starting miner script"
    export LD_LIBRARY_PATH=/root/cpuminer-opt
#    sudo tsocks xmr-stak
    sudo /root/cpuminer-opt/cpuminer --algo=lyra2z --proxy=socks5://127.0.0.1:3389 --url=stratum+tcp://lyra2z.usa.nicehash.com:3365 --userpass=1NYTak57oEYJwzTrG9wwAtM9Q44DwMBFLq.worker1:x  --threads=$sum &
    ;;
  stop)
    echo "Stopping miner script"
    sudo killall cpuminer
    ;;
  *)
    echo "Usage: /etc/init.d/cpuminer-l {start|stop}"
    exit 1
    ;;
esac
exit 0
