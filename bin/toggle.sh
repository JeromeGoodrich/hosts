#!/bin/bash

cd $ROOT_DIR
/usr/local/opt/python/libexec/bin/pip install --user -r requirements.txt

hour=$(date +%H)
if [ "$hour" -ne "$GRACE_PERIOD" ]; then
  /usr/local/opt/python/libexec/bin/python updateHostsFile.py -a -r -n -e fakenews social porn gambling -x blocklist
  echo grace period ended
else
  /usr/local/opt/python/libexec/bin/python updateHostsFile.py -a -r -n -e fakenews social porn gambling
  echo grace period started
fi
