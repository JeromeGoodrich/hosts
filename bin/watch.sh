#!/bin/bash

echo beginning watch hosts
hour=$(date +%H)
echo $hour = $GRACE_PERIOD
if [ "$hour" -ne "$GRACE_PERIOD" ]; then
  cd $ROOT_DIR
  /usr/local/opt/python/libexec/bin/pip install --user -r requirements.txt
  /usr/local/opt/python/libexec/bin/python updateHostsFile.py -a -r -n -e fakenews social porn gambling -x blocklist
fi
