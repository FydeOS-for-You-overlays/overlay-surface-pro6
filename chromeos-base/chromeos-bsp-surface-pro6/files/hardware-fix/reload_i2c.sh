#!/bin/sh
TMP_FILE="/tmp/.onstart_hid_i2c_check"
if [ -f ${TMP_FILE} ]; then
  /sbin/rmmod i2c_hid
  /usr/bin/sleep 0.1
  /sbin/modprobe i2c_hid
else
  touch ${TMP_FILE}
fi
