#! /bin/bash
# /etc/init.d/stopstak
# Carry out specific functions when asked to by the system
case "$1" in
  start)
    echo "Stopping miner script"
      sudo killall xmr-stak
    ;;
  stop)
    echo "Canceled"
    ;;
  *)
    echo "Usage: /etc/init.d/stopstak {start|stop}"
    exit 1
    ;;
esac
exit 0
