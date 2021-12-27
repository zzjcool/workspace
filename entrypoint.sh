#!/bin/sh
set -e
echo "running workspace"
/usr/sbin/sshd -D
exec "$@"