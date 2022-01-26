#!/bin/sh
set -e
echo "running workspace"
nohup dockerd-entrypoint.sh &
/usr/sbin/sshd -D