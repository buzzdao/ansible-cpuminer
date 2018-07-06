#! /bin/sh
# /etc/init.d/localproxycn.sh
# Carry out specific functions when asked to by the system
case "$1" in
  start)
    echo "Starting proxy script"
    killall autossh
    export LD_LIBRARY_PATH=/usr/bin/
    /usr/bin/autossh -f -M 25846 -ND 127.0.0.1:3389 root@bottonik.ddns.net -p 64852
    ;;
  stop)
    echo "Stopping proxy script"
    killall autossh
    ;;
  *)
    echo "Usage: /etc/init.d/localproxycn.sh {start|stop}"
    exit 1
    ;;
esac
exit 0
