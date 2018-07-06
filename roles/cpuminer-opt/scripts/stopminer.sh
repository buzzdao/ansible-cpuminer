#! /bin/bash
# /etc/init.d/stopstak
# Carry out specific functions when asked to by the system
case "$1" in
  start)
    echo "Stopping miner script"
      sudo killall cpuminer
    ;;
  stop)
    echo "Canceled"
    ;;
  *)
    echo "Usage: /etc/init.d/stopminer {start|stop}"
    exit 1
    ;;
esac
exit 0
