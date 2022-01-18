#!/bin/bash

echo beginning reboot hosts
cd $ROOT_DIR
/usr/local/opt/python/libexec/bin/pip install --user -r requirements.txt
/usr/local/opt/python/libexec/bin/python updateHostsFile.py -a -r -e fakenews social porn gambling -x blocklist
