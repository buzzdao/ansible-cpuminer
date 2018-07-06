#! /bin/bash
# /etc/init.d/stopproxy
# Carry out specific functions when asked to by the system
case "$1" in
  start)
    echo "Stopping proxy script"
      killall autossh
    ;;
  stop)
    echo "Canceled"
    ;;
  *)
    echo "Usage: /etc/init.d/stopproxy {start|stop}"
    exit 1
    ;;
esac
exit 0
